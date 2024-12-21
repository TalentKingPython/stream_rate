import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';

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
                  height: deviceHeight * 0.98,
                  imageFit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: deviceHeight * 0.12,
              left: deviceWidth * 0.25,
              right: deviceWidth * 0.25,
              child: Text(
                "Our app will give you movie and series ratings",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: colorWhite, fontSize: 16, height: 1.8),
              )),
          Positioned(
              top: deviceHeight * 0.44,
              left: deviceWidth * 0.12,
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/letter.png",
                        width: 35,
                        height: 35),
                    const SizedBox(width: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("3.6 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 22)),
                        Text("/ ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 16)),
                        Text(
                          " 5",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: deviceHeight * 0.38,
              right: deviceWidth * 0.08,
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/meta.png", width: 30, height: 30),
                    const SizedBox(width: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("7.3 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 22)),
                        Text("/ ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 16)),
                        Text(
                          " 10",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: deviceHeight * 0.51,
              left: deviceWidth * 0.15,
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/IMDB.png", width: 35, height: 35),
                    const SizedBox(width: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("8.1 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 22)),
                        Text("/ ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 16)),
                        Text(
                          " 10",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: deviceHeight * 0.45,
              right: deviceWidth * 0.06,
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/tomato.png",
                        width: 30,
                        height: 30),
                    const SizedBox(width: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("97 ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 20)),
                        Text("%",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 20)),
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
