import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stream_rate/screens/onboard/onboard.dart';

import 'splash.dart';
import '../../../blocs/bloc.dart';
import '../../../utils/utils.dart';

class SplashBloc extends Bloc {
  String tag = "SplashBloc>>>";
  BuildContext context;
  Timer? _timer;

  State<Splash> state;

  SplashBloc(this.context, this.state) {
    splashAction();
  }

  splashAction() {
    _timer = Timer(const Duration(seconds: 3), () {
      openScreenWithClearPrevious(context, const Onboard());
    });
  }

  @override
  void dispose() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
  }
}
