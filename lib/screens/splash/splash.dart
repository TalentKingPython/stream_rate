import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/image_assets.dart';

import '../../../utils/utils.dart';
import 'splash_bloc.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  SplashBloc? _bloc;

  double scale = 1.0;

  @override
  void initState() {
    super.initState();
    // Automatically zoom in and out every 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        scale = 1.5; // Zoom in
      });
    });
  }

  @override
  void didChangeDependencies() {
    if (mounted) {
      _bloc = SplashBloc(context, this);
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _bloc!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: colorPrimary,
            image: DecorationImage(
                image: AssetImage(AppImageAsset.splashBG), fit: BoxFit.cover),
          ),
          child: Stack(children: [
            Center(
                child: AnimatedScale(
                    scale: scale,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const LoadImageSimple(
                            image: "assets/images/streamrate-logo.png"),
                        const SizedBox(height: 10),
                        Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 120),
                            child: const Text(
                              "Movie and series ratings at your fingertips",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: colorWhite, fontSize: 18),
                            ))
                      ],
                    ))),
            Positioned(
              bottom: 100,
              right: 0,
              left: 0,
              child: Center(
                child: Image.asset(
                  "assets/gifs/splash_loading.gif",
                  color: colorWhite,
                  height: deviceHeight * 0.05,
                  width: deviceWidth * 0.09,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
