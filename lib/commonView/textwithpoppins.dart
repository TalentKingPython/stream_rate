import 'package:flutter/material.dart';

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
      style: TextStyle(
          fontWeight: weight,
          fontFamily: 'Poppins',
          fontSize: size,
          color: color),
    );
  }
}
