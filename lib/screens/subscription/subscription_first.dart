import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_check_text.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/subscription/thanks.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class SubScriptionFirst extends StatefulWidget {
  const SubScriptionFirst({Key? key}) : super(key: key);

  @override
  SubScriptionFirstState createState() => SubScriptionFirstState();
}

class SubScriptionFirstState extends State<SubScriptionFirst> {
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
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: deviceHeight * 0.1,
                left: deviceWidth * 0.08,
                right: deviceWidth * 0.08,
                bottom: deviceHeight * 0.16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LoadImageSimple(
                  image: 'assets/images/sub3-logo.png',
                  width: deviceWidth * 0.4,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.05,
                        vertical: deviceHeight * 0.03),
                    child: Text(
                        "Subscribe to our Premium Plan and enjoy unlimited access.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: colorWhite, fontSize: deviceHeight * 0.02))),
                Container(
                    padding: const EdgeInsets.all(1),
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
                        padding: EdgeInsets.all(deviceWidth * 0.04),
                        width: deviceWidth * 0.8,
                        decoration: BoxDecoration(
                            color: colorMainBackground,
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
                                    colors: [onBoardingRed, onBoardingOrange],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds);
                                },
                                child: Text(
                                  "\$2.99 ",
                                  style: GoogleFonts.poppins(
                                    fontSize: deviceHeight * 0.03,
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text("/ ",
                                  style: GoogleFonts.poppins(
                                      fontSize: deviceHeight * 0.02,
                                      color: Colors.grey)),
                              Text("week",
                                  style: GoogleFonts.poppins(
                                      fontSize: deviceHeight * 0.02,
                                      color: colorWhite)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconWithText(
                                text: "Unlimited Access",
                                backgroundColor: Colors.white.withOpacity(0.1),
                                fontColor: colorWhite,
                                fontSize: deviceHeight * 0.018,
                              ),
                              IconWithText(
                                text: "Priority Support",
                                backgroundColor: Colors.white.withOpacity(0.1),
                                fontColor: colorWhite,
                                fontSize: deviceHeight * 0.018,
                              ),
                              IconWithText(
                                text: "Access to Series and TV shows",
                                backgroundColor: Colors.white.withOpacity(0.1),
                                fontColor: colorWhite,
                                fontSize: deviceHeight * 0.018,
                              ),
                              IconWithText(
                                text: "Stop wasting time choosing",
                                backgroundColor: Colors.white.withOpacity(0.1),
                                fontColor: colorWhite,
                                fontSize: deviceHeight * 0.018,
                              ),
                              IconWithText(
                                text: "Unlimited Catalog",
                                backgroundColor: Colors.white.withOpacity(0.1),
                                fontColor: colorWhite,
                                fontSize: deviceHeight * 0.018,
                              ),
                              IconWithText(
                                text: "Ad-Free Experience",
                                backgroundColor: Colors.white.withOpacity(0.1),
                                fontColor: colorWhite,
                                fontSize: deviceHeight * 0.018,
                              ),
                              IconWithText(
                                text: "Exclusive Features",
                                backgroundColor: Colors.white.withOpacity(0.1),
                                fontColor: colorWhite,
                                fontSize: deviceHeight * 0.018,
                              ),
                            ],
                          ),
                        ]))),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.035,
          left: deviceWidth * 0.125,
          right: deviceWidth * 0.125,
          child: CustomFillButton(
            onPressed: () => openScreenWithResult(context, const Thanks()),
            isColorBtn: true,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("PAY ",
                          style: GoogleFonts.poppins(
                              fontSize: deviceHeight * 0.015,
                              color: colorWhite)),
                      Text("\$2.99",
                          style: GoogleFonts.poppins(
                              fontSize: deviceHeight * 0.015,
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
                            fontSize: deviceHeight * 0.018, color: colorWhite)),
                    const SizedBox(width: 2),
                    Icon(Icons.chevron_right,
                        size: deviceHeight * 0.018, color: colorWhite)
                  ],
                )
              ],
            ),
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
    );
  }
}
