import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWithPoppins extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final TextAlign? align;
  final FontWeight weight;
  const TextWithPoppins({
    super.key,
    required this.text,
    required this.align,
    required this.color,
    required this.size,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style:
          GoogleFonts.poppins(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
