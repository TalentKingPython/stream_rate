import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_check_text.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/constant.dart';
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
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        decoration: const BoxDecoration(
            color: colorPrimary,
            image: DecorationImage(
                image: AssetImage("assets/images/onboard1BG.png"),
                fit: BoxFit.fill)),
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.05, vertical: deviceHeight * 0.07),
            child: Align(
              alignment: Alignment.topCenter,
              child: LoadImageSimple(
                image: 'assets/images/sub3-logo.png',
                width: deviceWidth * 0.4,
              ),
            ),
          ),
          Positioned(
            bottom: deviceHeight * 0.03,
            left: deviceWidth * 0.05,
            right: deviceWidth * 0.05,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: deviceHeight * 0.02,
                          horizontal: deviceHeight * 0.03),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius:
                            BorderRadius.circular(deviceHeight * 0.03),
                      ),
                      child: Column(children: [
                        Container(
                          padding: EdgeInsets.only(bottom: deviceHeight * 0.01),
                          child: LoadImageSimple(
                            image: "assets/images/subscribe_main.png",
                            width: deviceHeight * 0.16,
                          ),
                        ),
                        Text("Go Unlimited with Premium",
                            style: GoogleFonts.poppins(
                                fontSize: deviceHeight * 0.020)),
                        SizedBox(height: deviceHeight * 0.01),
                        Container(
                          padding: const EdgeInsets.all(3),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: deviceHeight * 0.02),
                            decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(children: [
                              SizedBox(height: deviceHeight * 0.02),
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
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ).createShader(bounds);
                                    },
                                    child: Text(
                                      "\$2.99 ",
                                      style: GoogleFonts.poppins(
                                        fontSize: deviceHeight * 0.03,
                                        color: colorWhite,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text("/ ",
                                      style: GoogleFonts.poppins(
                                          fontSize: deviceHeight * 0.02,
                                          color: colorMainGray)),
                                  Text("week",
                                      style: GoogleFonts.poppins(
                                          fontSize: deviceHeight * 0.02,
                                          color: colorBlack)),
                                ],
                              ),
                              SizedBox(height: deviceHeight * 0.008),
                              SingleChildScrollView(
                                padding: EdgeInsets.only(
                                    bottom: deviceHeight * 0.010),
                                physics: const NeverScrollableScrollPhysics(),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconWithText(
                                      text: "Unlimited Access",
                                      backgroundColor:
                                          Colors.black.withOpacity(0.1),
                                      fontColor: colorBlack,
                                      fontSize: deviceHeight * 0.016,
                                    ),
                                    IconWithText(
                                      text: "Priority Support",
                                      backgroundColor:
                                          Colors.black.withOpacity(0.1),
                                      fontColor: colorBlack,
                                      fontSize: deviceHeight * 0.016,
                                    ),
                                    IconWithText(
                                      text: "Access to Series and TV shows",
                                      backgroundColor:
                                          Colors.black.withOpacity(0.1),
                                      fontColor: colorBlack,
                                      fontSize: deviceHeight * 0.016,
                                    ),
                                    IconWithText(
                                      text: "Stop wasting time choosing",
                                      backgroundColor:
                                          Colors.black.withOpacity(0.1),
                                      fontColor: colorBlack,
                                      fontSize: deviceHeight * 0.016,
                                    ),
                                    IconWithText(
                                      text: "Unlimited Catalog",
                                      backgroundColor:
                                          Colors.black.withOpacity(0.1),
                                      fontColor: colorBlack,
                                      fontSize: deviceHeight * 0.016,
                                    ),
                                    IconWithText(
                                      text: "Ad-Free Experience",
                                      backgroundColor:
                                          Colors.black.withOpacity(0.1),
                                      fontColor: colorBlack,
                                      fontSize: deviceHeight * 0.016,
                                    ),
                                    IconWithText(
                                      text: "Exclusive Features",
                                      backgroundColor:
                                          Colors.black.withOpacity(0.1),
                                      fontColor: colorBlack,
                                      fontSize: deviceHeight * 0.016,
                                    ),
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(height: deviceHeight * .03),
                      ]),
                    ),
                    SizedBox(height: deviceHeight * .03),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: CustomFillButton(
                      onPressed: () =>
                          openScreenWithResult(context, const Thanks()),
                      isColorBtn: true,
                      width: deviceWidth * .6,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("You pay",
                                    style: GoogleFonts.poppins(
                                        fontSize: deviceHeight * 0.012,
                                        color: colorWhite)),
                                Text("\$2.99",
                                    style: GoogleFonts.poppins(
                                        fontSize: deviceHeight * 0.014,
                                        color: colorWhite)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("SUBSCRIBE",
                                  style: GoogleFonts.poppins(
                                      fontSize: deviceHeight * 0.018,
                                      color: colorWhite)),
                              const SizedBox(width: 2),
                              Icon(Icons.chevron_right,
                                  size: deviceHeight * 0.018, color: colorWhite)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: deviceHeight * 0.06,
            left: deviceWidth * 0.05,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: deviceHeight * 0.04,
                width: deviceHeight * 0.04,
                padding: EdgeInsets.symmetric(horizontal: deviceHeight * 0.015),
                decoration: BoxDecoration(
                  color: colorMainGray.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(deviceHeight * 0.012),
                ),
                child: Center(
                  child: Icon(Icons.arrow_back_ios,
                      size: deviceHeight * 0.018, color: colorWhite),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
