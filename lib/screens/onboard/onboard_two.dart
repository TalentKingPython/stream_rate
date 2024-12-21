import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';

import '../../../utils/utils.dart';

class OnboardTwo extends StatefulWidget {
  const OnboardTwo({Key? key}) : super(key: key);

  @override
  OnboardTwoState createState() => OnboardTwoState();
}

class OnboardTwoState extends State<OnboardTwo> {
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
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoadImageSimple(
              image: "assets/images/onboard2BG.png",
              width: deviceWidth,
              height: deviceHeight * 0.8,
              imageFit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            Text("Point your phone at the TV and press the",
                style: GoogleFonts.poppins(color: colorWhite, fontSize: 14)),
            const SizedBox(height: 5),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  SvgPicture.asset("assets/svgs/press_button.svg"),
                  Text(" button to view the scores.",
                      style:
                          GoogleFonts.poppins(color: colorWhite, fontSize: 14))
                ]),
            const SizedBox(height: 10),
            Text("Results improve with the movie or series name.",
                style: GoogleFonts.poppins(color: colorMainGray, fontSize: 14))
          ],
        ),
      ),
    );
  }
}
