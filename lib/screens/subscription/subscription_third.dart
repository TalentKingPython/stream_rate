import 'package:flutter/material.dart';
import 'package:stream_rate/commonView/custom_check_text.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/subscription/thanks.dart';

import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class SubScriptionThird extends StatefulWidget {
  const SubScriptionThird({Key? key}) : super(key: key);

  @override
  SubScriptionThirdState createState() => SubScriptionThirdState();
}

class SubScriptionThirdState extends State<SubScriptionThird> {
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
          padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
          child: Column(
            children: [
              LoadImageSimple(
                image: 'assets/images/streamrate-logo.png',
                width: deviceWidth * 0.4,
                height: 100,
                imageFit: BoxFit.fill,
              ),
              const SizedBox(height: 40),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(bottom: 30),
                    width: deviceWidth * 0.9,
                    height: 610,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      LoadImageSimple(
                          image: "assets/images/subscribe_main.png",
                          width: deviceWidth * 0.4,
                          height: 100,
                          imageFit: BoxFit.fill),
                      const Text("Go Unlimited with Premium",
                          style: TextStyle(fontSize: 20)),
                      Container(
                        padding: const EdgeInsets.all(3),
                        width: deviceWidth * 0.8,
                        decoration: BoxDecoration(
                          color: colorMainBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: const LinearGradient(
                            colors: [Color(0xFFED1945), Color(0xFFF79B1E)],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          width: deviceWidth * 0.75,
                          decoration: BoxDecoration(
                              color: colorWhite,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      colors: [
                                        Color(0xFFED1945),
                                        Color(0xFFF79B1E)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds);
                                  },
                                  child: const Text(
                                    "\$2.99 ",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: colorWhite,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Text("/ ",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                const Text("week",
                                    style: TextStyle(
                                        fontSize: 20, color: colorBlack)),
                              ],
                            ),
                            const SizedBox(height: 15),
                            IconWithText(
                              text: "Unlimited Access",
                              backgroundColor: Colors.black.withOpacity(0.1),
                              fontColor: colorBlack,
                            ),
                            IconWithText(
                              text: "Priority Support",
                              backgroundColor: Colors.black.withOpacity(0.1),
                              fontColor: colorBlack,
                            ),
                            IconWithText(
                              text: "Access to Series and TV shows",
                              backgroundColor: Colors.black.withOpacity(0.1),
                              fontColor: colorBlack,
                            ),
                            IconWithText(
                              text: "Stop wasting time choosing",
                              backgroundColor: Colors.black.withOpacity(0.1),
                              fontColor: colorBlack,
                            ),
                            IconWithText(
                              text: "Unlimited Catalog",
                              backgroundColor: Colors.black.withOpacity(0.1),
                              fontColor: colorBlack,
                            ),
                            IconWithText(
                              text: "Ad-Free Experience",
                              backgroundColor: Colors.black.withOpacity(0.1),
                              fontColor: colorBlack,
                            ),
                            IconWithText(
                              text: "Exclusive Features",
                              backgroundColor: Colors.black.withOpacity(0.1),
                              fontColor: colorBlack,
                            ),
                          ]),
                        ),
                      ),
                    ]),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 60,
                    right: 60,
                    child: CustomFillButton(
                      onPressed: () =>
                          openScreenWithResult(context, const Thanks()),
                      isColorBtn: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("PAY \$2.99",
                              style:
                                  TextStyle(fontSize: 12, color: colorWhite)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text("SUBSCRIBE",
                                  style: TextStyle(
                                      fontSize: 12, color: colorWhite)),
                              SizedBox(width: 2),
                              Icon(Icons.chevron_right,
                                  size: 12, color: colorWhite)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 36,
              width: 36,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
