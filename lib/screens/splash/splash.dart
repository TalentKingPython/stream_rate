import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/utils.dart';
import 'splash_bloc.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  SplashBloc? _bloc;

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
                image: AssetImage("assets/images/splash.png"),
                fit: BoxFit.cover),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: Image.asset(
                "assets/gifs/splash_loading.gif",
                color: colorWhite,
                height: deviceHeight * 0.05,
                width: deviceWidth * 0.09,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
