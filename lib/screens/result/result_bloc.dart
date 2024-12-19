import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stream_rate/screens/onboard/onboard.dart';

import 'result.dart';
import '../../../blocs/bloc.dart';
import '../../../utils/utils.dart';

class ResultBloc extends Bloc {
  String tag = "ResultBloc>>>";
  BuildContext context;

  State<Result> state;

  ResultBloc(this.context, this.state) {
    resultAction();
  }

  resultAction() {}

  @override
  void dispose() {}
}
