import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/screens/subscription/thanks.dart';

import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class SubScriptionSecond extends StatefulWidget {
  const SubScriptionSecond({Key? key}) : super(key: key);

  @override
  SubScriptionSecondState createState() => SubScriptionSecondState();
}

class SubScriptionSecondState extends State<SubScriptionSecond> {
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
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/subscription-bg.png'),
                fit: BoxFit.fill)),
        child: Stack(
          children: [
            Positioned(
              top: deviceHeight * 0.08,
              left: deviceWidth * 0.03,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: deviceHeight * 0.04,
                  width: deviceHeight * 0.04,
                  padding:
                      EdgeInsets.symmetric(horizontal: deviceHeight * 0.015),
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
            Positioned(
                bottom: deviceHeight * 0.025,
                left: 0,
                right: 0,
                child: Center(
                  child: CustomFillButton(
                    onPressed: () =>
                        openScreenWithResult(context, const Thanks()),
                    width: deviceWidth * .6,
                    isColorBtn: true,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("PAY \$2.99",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: colorWhite)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("SUBSCRIBE",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, color: colorWhite)),
                            const SizedBox(width: 2),
                            const Icon(Icons.chevron_right,
                                size: 16, color: colorWhite)
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
