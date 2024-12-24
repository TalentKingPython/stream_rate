import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/constant.dart';

import '../../../utils/utils.dart';

class OnboardThree extends StatefulWidget {
  const OnboardThree({Key? key}) : super(key: key);

  @override
  OnboardThreeState createState() => OnboardThreeState();
}

class OnboardThreeState extends State<OnboardThree> {
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
      body: Stack(
        children: [
          Container(
            width: deviceWidth,
            height: deviceHeight,
            decoration: const BoxDecoration(
              color: colorPrimary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoadImageSimple(
                  image: "assets/images/onboard3BG.png",
                  width: deviceWidth,
                  height: deviceHeight,
                  imageFit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 70 + (deviceHeight - 70) * 0.06,
              left: deviceWidth * 0.25,
              right: deviceWidth * 0.25,
              child: Text(
                "Our app will give you movie and series ratings",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: colorWhite,
                  fontSize: deviceAverageSize * 0.02,
                ),
              )),
          Positioned(
              top: (deviceHeight - 70) * 0.44,
              left: deviceWidth * 0.12,
              child: Container(
                width: deviceWidth * 0.26,
                height: (deviceHeight - 70) * 0.035,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius:
                        BorderRadius.circular(deviceAverageSize * 0.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/letter.png",
                        width: deviceAverageSize * 0.035,
                        height: deviceAverageSize * 0.035),
                    SizedBox(width: deviceWidth * 0.001),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("3.6 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.022)),
                        Text("/ ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.018)),
                        Text(
                          " 5",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceAverageSize * 0.02),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: (deviceHeight - 70) * 0.38,
              right: deviceWidth * 0.08,
              child: Container(
                width: deviceWidth * 0.26,
                height: (deviceHeight - 70) * 0.035,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius:
                        BorderRadius.circular(deviceAverageSize * 0.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/meta.png",
                        width: deviceAverageSize * 0.035),
                    SizedBox(width: deviceWidth * 0.001),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("7.3 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.022)),
                        Text("/ ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.018)),
                        Text(
                          " 10",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceAverageSize * 0.02),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: (deviceHeight - 70) * 0.51,
              left: deviceWidth * 0.15,
              child: Container(
                width: deviceWidth * 0.26,
                height: (deviceHeight - 70) * 0.035,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius:
                        BorderRadius.circular(deviceAverageSize * 0.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/imdb.png",
                        width: deviceAverageSize * 0.035),
                    SizedBox(width: deviceWidth * 0.001),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("8.1 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.022)),
                        Text("/ ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.018)),
                        Text(
                          " 10",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceAverageSize * 0.02),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: (deviceHeight - 70) * 0.45,
              right: deviceWidth * 0.05,
              child: Container(
                width: deviceWidth * 0.26,
                height: (deviceHeight - 70) * 0.035,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius:
                        BorderRadius.circular(deviceAverageSize * 0.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/tomato.png",
                        width: deviceAverageSize * 0.03),
                    SizedBox(width: deviceWidth * 0.001),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("97 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.02)),
                        Text("%",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceAverageSize * 0.02)),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
