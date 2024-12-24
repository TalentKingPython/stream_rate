import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/utils/utils.dart';

class IconWithText extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color fontColor;
  final double? fontSize;
  const IconWithText(
      {Key? key,
      required this.text,
      required this.backgroundColor,
      required this.fontColor,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: deviceHeight * 0.03,
            width: deviceWidth * 0.06,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Center(
              child: Icon(Icons.check,
                  size: deviceHeight * 0.018, color: Color(0xFFED1945)),
            ),
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: fontSize ?? deviceHeight * 0.018,
                color: fontColor,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
