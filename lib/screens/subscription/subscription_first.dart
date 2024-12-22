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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadImageSimple(
                image: 'assets/images/streamrate-logo.png',
                width: deviceWidth * 0.4,
              ),
              const SizedBox(height: 10),
              CustomFillButton(
                  width: deviceWidth * 0.3,
                  height: 30,
                  child: Text("PREMIUM",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: colorWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
                  child: Text(
                      "Subscribe to our Premium Plan and enjoy unlimited access.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: colorWhite, fontSize: 18))),
              Container(
                  padding: const EdgeInsets.all(1),
                  width: deviceWidth * 0.8,
                  decoration: BoxDecoration(
                    color: colorMainBackground, // Background color
                    borderRadius:
                        BorderRadius.circular(20.0), // Rounded corners
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFED1945),
                        Color(0xFFF79B1E)
                      ], // Gradient colors
                      begin: Alignment.bottomLeft, // Start from bottom-left
                      end: Alignment.topRight, // End at top-right
                    ), // Border color and width
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(16.0),
                      width: deviceWidth * 0.79,
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
                                  fontSize: 30,
                                  color: colorWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("/ ",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, color: Colors.grey)),
                            Text("week",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, color: colorWhite)),
                          ],
                        ),
                        const SizedBox(height: 15),
                        IconWithText(
                          text: "Unlimited Access",
                          backgroundColor: Colors.white.withOpacity(0.1),
                          fontColor: colorWhite,
                        ),
                        IconWithText(
                          text: "Priority Support",
                          backgroundColor: Colors.white.withOpacity(0.1),
                          fontColor: colorWhite,
                        ),
                        IconWithText(
                          text: "Access to Series and TV shows",
                          backgroundColor: Colors.white.withOpacity(0.1),
                          fontColor: colorWhite,
                        ),
                        IconWithText(
                          text: "Stop wasting time choosing",
                          backgroundColor: Colors.white.withOpacity(0.1),
                          fontColor: colorWhite,
                        ),
                        IconWithText(
                          text: "Unlimited Catalog",
                          backgroundColor: Colors.white.withOpacity(0.1),
                          fontColor: colorWhite,
                        ),
                        IconWithText(
                          text: "Ad-Free Experience",
                          backgroundColor: Colors.white.withOpacity(0.1),
                          fontColor: colorWhite,
                        ),
                        IconWithText(
                          text: "Exclusive Features",
                          backgroundColor: Colors.white.withOpacity(0.1),
                          fontColor: colorWhite,
                        ),
                      ]))),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 30),
                child: CustomFillButton(
                  onPressed: () =>
                      openScreenWithResult(context, const Thanks()),
                  isColorBtn: true,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("PAY \$2.99",
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: colorWhite)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("SUBSCRIBE",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, color: colorWhite)),
                          const SizedBox(width: 2),
                          const Icon(Icons.chevron_right,
                              size: 18, color: colorWhite)
                        ],
                      )
                    ],
                  ),
                ),
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
