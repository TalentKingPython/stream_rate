import 'package:flutter/material.dart';

import '../constant/constant.dart';

class LoadImageWithPlaceHolder extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final Color? defaultAssetColor;
  final String image;
  final String? defaultAssetImage;
  final bool isNetworkImage;
  final Widget? placeholder;
  final Widget? errorHolder;
  final BorderRadius? borderRadius;
  final BoxFit? imageFit;
  final BoxFit? placeholderFit;

  const LoadImageWithPlaceHolder({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    this.defaultAssetImage,
    this.defaultAssetColor,
    this.imageFit,
    this.placeholderFit,
    this.isNetworkImage = true,
    this.color,
    this.placeholder,
    this.errorHolder,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image(
          image: getImageProvider(),
          color: getColor(),
          fit: getBoxFit(),
          height: height,
          width: width,
          errorBuilder: (context, error, stackTrace) {
            return getErrorHolder();
          },
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            return getFrameBuilder(child, frame, wasSynchronouslyLoaded);
          },
        ),
      ),
    );
  }

  getImageProvider() {
    return isNetworkImage
        ? (image.isNotEmpty
            ? NetworkImage(image)
            : AssetImage(defaultAssetImage ?? ""))
        : AssetImage(image);
  }

  getColor() {
    return isNetworkImage
        ? (image.isNotEmpty
            ? (color)
            : ((defaultAssetImage == null)
                ? colorPrimary
                : (defaultAssetColor)))
        : (defaultAssetColor);
  }

  getBoxFit() {
    return imageFit ??
        (isNetworkImage
            ? (image.isNotEmpty ? BoxFit.cover : BoxFit.scaleDown)
            : BoxFit.cover);
  }

  getErrorHolder() {
    return Center(
      child: errorHolder ?? /*getPlaceHolderImage()*/
          Container(color: colorShimmerBg),
    );
  }

  getFrameBuilder(Widget child, int? frame, bool wasSynchronouslyLoaded) {
    if (wasSynchronouslyLoaded) {
      return child;
    } else {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
        child: frame != null
            ? child
            : placeholder ??
                /*Shimmer.fromColors(
                  baseColor: colorShimmerBg,
                  highlightColor: Colors.grey[100],
                  period: const Duration(milliseconds: 800),
                  child: getPlaceHolderImage(),
                )*/
                Container(color: colorShimmerBg),
      );
    }
  }
}

class LoadImageSimple extends StatelessWidget {
  final String image;
  final String? defaultAssetImage;
  final BoxFit? imageFit;
  final double? height;
  final double? width;

  const LoadImageSimple({
    Key? key,
    required this.image,
    this.defaultAssetImage,
    this.imageFit,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: getImageProvider(),
      height: height,
      width: width,
      fit: imageFit,
      errorBuilder: (context, error, stackTrace) {
        return Container(color: colorShimmerBg);
      },
    );
  }

  bool checkImageUrl() {
    bool checkedStatus = Uri.parse(image).isAbsolute;
    return checkedStatus;
  }

  getImageProvider() {
    return checkImageUrl() ? NetworkImage(image) : AssetImage(image);
  }
}
