import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/image_assets.dart';

import '../../../utils/utils.dart';
import 'splash_bloc.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  SplashBloc? _bloc;

  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  double scale = 1.0;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
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
                child: AnimatedBuilder(
                    animation: _scaleAnimation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _scaleAnimation.value,
                        child: child,
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LoadImageSimple(
                            image: "assets/images/logowithname.png",
                            width: deviceWidth * 0.35),
                        SizedBox(height: deviceHeight * 0.05),
                        SizedBox(
                            width: deviceWidth * 0.3,
                            child: Text(
                              "Movie and series ratings at your fingertips",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceWidth * 0.022),
                            ))
                      ],
                    ))),
            Positioned(
              bottom: deviceHeight * 0.08,
              right: 0,
              left: 0,
              child: Center(
                child: Image.asset(
                  "assets/gifs/splash_loading.gif",
                  color: colorWhite,
                  height: deviceAverageSize * 0.05,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
