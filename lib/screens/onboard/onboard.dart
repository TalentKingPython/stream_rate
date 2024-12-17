import 'package:flutter/material.dart';
import 'package:stream_rate/screens/signup/signup.dart';

import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  OnboardState createState() => OnboardState();
}

class OnboardState extends State<Onboard> {
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
      body: Stack(children: [
        Center(child: firstBoard()),
        Positioned(bottom: 0, left: 0, right: 0, child: bottomSection())
      ]),
    );
  }

  Widget firstBoard() {
    return Column(children: []);
  }

  Widget bottomSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomFillButton(isColorBtn: false, width: 85, child: Text('')),
          CustomFillButton(
            width: 85,
            onPressed: () => openScreenWithResult(context, const SignUp()),
            child: Row(
              children: const [
                Text(
                  'NEXT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: colorWhite),
                ),
                Icon(Icons.arrow_forward_ios, color: colorWhite, size: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
