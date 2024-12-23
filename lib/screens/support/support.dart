import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/utils/utils.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  SupportState createState() => SupportState();
}

class SupportState extends State<Support> {
  final isHidden = true;
  String randomText = generateRandomText(8);

  @override
  void initState() {
    super.initState();
  }

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
      appBar: AppBar(
        backgroundColor: colorPrimary,
        automaticallyImplyLeading: false,
        foregroundColor: colorBlack,
        toolbarHeight: 80,
        elevation: 0,
        title: Stack(
          children: [
            SizedBox(
              height: deviceHeight * 0.06,
              child: Center(
                child: Text(
                  'Contact Support',
                  style: GoogleFonts.poppins(
                      fontSize: deviceHeight * 0.035, color: colorWhite),
                ),
              ),
            ),
            Positioned(
              left: 15,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 36,
                  width: 36,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: colorWhite.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child:
                        Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: colorMainBackground,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: deviceWidth * 0.75,
                child: Text('Please let us know how can we help you',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: deviceHeight * 0.024,
                        fontWeight: FontWeight.w300)),
              ),
            ),
            SizedBox(height: deviceHeight * 0.05),
            Text('Write Your Message',
                style: GoogleFonts.poppins(
                    color: colorWhite,
                    fontSize: deviceHeight * 0.022,
                    fontWeight: FontWeight.w300)),
            SizedBox(height: deviceHeight * 0.02),
            CustomTextFormField(
                height: deviceHeight * 0.18,
                hintText: "  Message ..",
                hintStyle: GoogleFonts.poppins(
                    color: whitecaptcha,
                    fontSize: deviceHeight * 0.02,
                    fontWeight: FontWeight.w300),
                minLines: 8),
            SizedBox(height: deviceHeight * 0.05),
            Text('Please enter the characters below',
                style: GoogleFonts.poppins(
                    color: colorWhite,
                    fontSize: deviceHeight * 0.022,
                    fontWeight: FontWeight.w300)),
            SizedBox(height: deviceHeight * 0.015),
            Container(
              width: deviceWidth,
              height: 100,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: whitelow, borderRadius: BorderRadius.circular(20)),
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.003)
                  ..setEntry(3, 1, 0.003)
                  ..rotateY(0.2 * 3.14),
                child: Text(
                  randomText,
                  style: GoogleFonts.poppins(
                    color: colorWhite,
                    fontSize: deviceWidth * 0.095,
                    letterSpacing: 10.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: deviceHeight * 0.018),
            CustomTextFormField(
              height: deviceHeight * 0.08,
              hintText: "  Enter Captcha",
              hintStyle: GoogleFonts.poppins(
                  color: whitecaptcha,
                  fontSize: deviceHeight * 0.02,
                  fontWeight: FontWeight.w300),
            ),
            const Spacer(),
            CustomFillButton(
              onPressed: () => openMessageDialog(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.send, color: colorWhite, size: 16),
                  const SizedBox(width: 5),
                  Text(
                    'SEND MESSAGE',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceWidth * 0.045),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
