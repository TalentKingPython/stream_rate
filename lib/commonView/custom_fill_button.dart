import 'package:flutter/material.dart';

import '../constant/constant.dart';

class CustomFillButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final bool isColorBtn;
  final double? width, height;
  final BorderRadiusDirectional? borderRadius;
  final EdgeInsetsDirectional? margin, padding;
  final MaterialTapTargetSize? tapTargetSize;

  const CustomFillButton({
    super.key,
    required this.child,
    this.onPressed,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.isColorBtn = true,
    this.borderRadius,
    this.tapTargetSize = MaterialTapTargetSize.padded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height ?? deviceHeight * .06,
      decoration: BoxDecoration(
        gradient: isColorBtn
            ? const LinearGradient(
                colors: [Color(0xFFED1945), Color(0xFFF79B1E)],
                begin: Alignment(-0.7, 0.0),
                end: Alignment.centerRight)
            : null,
        color: isColorBtn ? null : Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: MaterialButton(onPressed: onPressed, child: child),
    );
  }
}
