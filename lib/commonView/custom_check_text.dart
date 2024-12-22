import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color fontColor;

  const IconWithText(
      {Key? key,
      required this.text,
      required this.backgroundColor,
      required this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 26,
            width: 26,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: const Center(
              child: Icon(Icons.check, size: 18, color: Color(0xFFED1945)),
            ),
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(fontSize: 20, color: fontColor),
          ),
        ],
      ),
    );
  }
}
