import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/colors.dart';
import 'package:stream_rate/constant/constant.dart';

class UserCard extends StatelessWidget {
  final String userName;
  final String? imagePath;
  final bool isSelected;

  const UserCard({
    Key? key,
    required this.userName,
    this.imagePath,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1), // Replace with `colorWhite`
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: deviceWidth * 0.07,
                height: deviceHeight * 0.03,
                decoration: BoxDecoration(
                  color: colorMainBackground,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: imagePath != null && imagePath!.isNotEmpty
                      ? LoadImageSimple(
                          image: imagePath!,
                          imageFit: BoxFit.cover, // Ensures the image fits
                          width: 50,
                          height: 50,
                        )
                      : const Icon(
                          Icons.person,
                          size: 16,
                          color: Colors.grey,
                        ),
                ),
              ),
              SizedBox(
                width: deviceWidth * 0.03,
              ),
              Text(
                userName,
                style: GoogleFonts.poppins(
                    color: Colors.white, // Replace with `colorWhite`
                    fontSize: deviceHeight * 0.022,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          isSelected
              ? Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF79B1E), Color(0xFFED1945)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: const Icon(Icons.check, color: colorWhite))
              : Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: colorWhite.withOpacity(
                          0.1)), // Add any child widget here if needed
                  child: Container(),
                ),
        ],
      ),
    );
  }
}
