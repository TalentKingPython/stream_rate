import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:stream_rate/screens/signup/signup.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class Capture extends StatefulWidget {
  const Capture({Key? key}) : super(key: key);

  @override
  CaptureState createState() => CaptureState();
}

class CaptureState extends State<Capture> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMainBackground,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
        child: Column(children: []),
      ),
    );
  }
}
