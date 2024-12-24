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
      margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.006),
      padding: EdgeInsets.all(deviceHeight * 0.01),
      height: deviceHeight * .065,
      decoration: BoxDecoration(
        color: colorItemCard,
        borderRadius: BorderRadius.circular(deviceHeight * 0.02),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(deviceHeight * .005),
                child: imagePath != null && imagePath!.isNotEmpty
                    ? LoadImageSimple(
                        image: imagePath!,
                        imageFit: BoxFit.fill,
                        width: deviceHeight * 0.045,
                        height: deviceHeight * 0.045,
                      )
                    : Container(
                        width: deviceHeight * 0.045,
                        height: deviceHeight * 0.045,
                        decoration: BoxDecoration(
                          color: colorMainBackground,
                          borderRadius:
                              BorderRadius.circular(deviceHeight * .013),
                        ),
                        child: Icon(
                          Icons.person,
                          size: deviceHeight * .024,
                          color: colorMainLightGray,
                        ),
                      ),
              ),
              SizedBox(
                width: deviceWidth * 0.03,
              ),
              Text(
                userName,
                style: GoogleFonts.poppins(
                    color: colorWhite,
                    fontSize: deviceHeight * 0.018,
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
