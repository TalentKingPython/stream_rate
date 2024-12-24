import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/constant.dart';

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
              height: (deviceHeight - 70) * 0.85,
              imageFit: BoxFit.fill,
            ),
            SizedBox(height: (deviceHeight - 70) * 0.01),
            Text("Point your phone at the TV and press the",
                style: GoogleFonts.poppins(
                    color: colorWhite, fontSize: deviceAverageSize * 0.02)),
            SizedBox(height: (deviceHeight - 70) * 0.005),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  SvgPicture.asset("assets/svgs/press_button.svg"),
                  Text(" button to view the scores.",
                      style: GoogleFonts.poppins(
                          color: colorWhite,
                          fontSize: deviceAverageSize * 0.02))
                ]),
            SizedBox(height: (deviceHeight - 70) * 0.01),
            Text("Results improve with the movie or series name.",
                style: GoogleFonts.poppins(
                    color: colorMainGray, fontSize: deviceAverageSize * 0.02))
          ],
        ),
      ),
    );
  }
}
