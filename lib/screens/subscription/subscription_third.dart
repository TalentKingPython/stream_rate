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
                horizontal: 30, vertical: deviceHeight * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: LoadImageSimple(
                    image: 'assets/images/sub3-logo.png',
                    // width: deviceWidth * 0.4,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.03,
                ),
                Expanded(
                  flex: 10,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 20),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: LoadImageSimple(
                                image: "assets/images/subscribe_main.png",
                                width: deviceWidth * 0.4,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text("Go Unlimited with Premium",
                                style: GoogleFonts.poppins(
                                    fontSize: deviceHeight * 0.022)),
                          ),
                          Expanded(
                            flex: 12,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                borderRadius: BorderRadius.circular(20.0),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFED1945),
                                    Color(0xFFF79B1E)
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(deviceWidth * 0.04),
                                decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.baseline,
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
                                                fontSize: deviceHeight * 0.03,
                                                color: Colors.black)),
                                        Text("week",
                                            style: GoogleFonts.poppins(
                                                fontSize: deviceHeight * 0.024,
                                                color: colorBlack)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: deviceHeight * 0.008),
                                  Expanded(
                                    flex: 10,
                                    child: SingleChildScrollView(
                                      padding: EdgeInsets.only(bottom: 10),
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            text:
                                                "Access to Series and TV shows",
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
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: deviceHeight * 0.045,
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
          Positioned(
            top: deviceHeight * 0.06,
            left: deviceWidth * 0.05,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 36,
                width: 36,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: colorMainGray.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child:
                      Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
