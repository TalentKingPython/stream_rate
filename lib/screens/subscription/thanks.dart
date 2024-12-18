import 'package:flutter/material.dart';
import 'package:stream_rate/commonView/custom_check_text.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';

import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class Thanks extends StatefulWidget {
  const Thanks({Key? key}) : super(key: key);

  @override
  ThanksState createState() => ThanksState();
}

class ThanksState extends State<Thanks> {
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
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(children: [
              LoadImageSimple(
                image: 'assets/images/streamrate-logo.png',
                width: deviceWidth * 0.4,
                height: 130,
                imageFit: BoxFit.fill,
              ),
              const SizedBox(height: 100),
              Container(
                padding: const EdgeInsets.all(16),
                width: deviceWidth * 0.9,
                height: deviceHeight * 0.4,
                decoration: BoxDecoration(
                  color: colorWhite,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/thanks_main.png",
                        width: deviceWidth * 0.4,
                        height: 100,
                        imageFit: BoxFit.fill),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 50),
                        child: const Text(
                            "Thank you for subscribing for StreamRate Premium",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20))),
                    CustomFillButton(
                      width: deviceWidth * 0.4,
                      isColorBtn: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("GO BACK HOME",
                              style:
                                  TextStyle(fontSize: 16, color: colorWhite)),
                          SizedBox(width: 2),
                          Icon(Icons.chevron_right, size: 18, color: colorWhite)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ]));
  }
}
