import 'dart:async';

import 'package:flutter/material.dart';

import 'splash.dart';
import '../../../blocs/bloc.dart';
import '../../../utils/utils.dart';

class SplashBloc extends Bloc {
  String tag = "SplashBloc>>>";
  BuildContext context;
  Timer? _timer;

  State<Splash> state;

  SplashBloc(this.context, this.state);

  splashAction() {
    _timer = Timer(const Duration(milliseconds: 2000), () {
      // openScreenWithClearPrevious(
      //     context, const OnboardingPage(isFromHome: false));
    });
  }

  @override
  void dispose() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
  }
}
