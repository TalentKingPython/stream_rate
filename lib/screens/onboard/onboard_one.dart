import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';

import '../../../utils/utils.dart';

class OnboardOne extends StatefulWidget {
  const OnboardOne({Key? key}) : super(key: key);

  @override
  OnboardOneState createState() => OnboardOneState();
}

class OnboardOneState extends State<OnboardOne> {
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
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadImageSimple(
                image: "assets/images/streamrate-logo.png",
                width: deviceWidth * 0.4),
            SizedBox(height: (deviceHeight - 70) * 0.05),
            Text("Welcome!",
                style: GoogleFonts.poppins(
                    color: colorWhite, fontSize: deviceAverageSize * 0.04)),
            Text("We are happy to see you here.",
                style: GoogleFonts.poppins(
                    color: colorWhite, fontSize: deviceAverageSize * 0.027)),
            SizedBox(height: (deviceHeight - 70) * 0.05),
            LoadImageSimple(
                image: "assets/images/onboard_free.png",
                width: deviceWidth * 0.6),
            SizedBox(height: (deviceHeight - 70) * 0.05),
            Text("Streamrate is very easy to use.",
                style: GoogleFonts.poppins(
                    color: colorWhite,
                    fontSize: deviceAverageSize * 0.027,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: (deviceHeight - 70) * 0.01),
            SizedBox(
              width: deviceWidth * 0.5,
              child: Text("You will receive 5 free credits every month.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: colorWhite,
                      fontSize: deviceAverageSize * 0.025,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }
}
