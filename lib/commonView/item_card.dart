import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/item_card_model.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/utils/utils.dart';

class ItemCard extends StatelessWidget {
  final ItemCardModel item;
  const ItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.135,
      margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(deviceHeight * 0.020),
          color: colorItemCard),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(deviceHeight * 0.020),
                  bottomLeft: Radius.circular(deviceHeight * 0.020)),
              child: LoadImageSimple(
                image: item.image,
                imageFit: BoxFit.cover,
                defaultAssetImage: AppImageAsset.resultnoimg,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(deviceHeight * 0.015),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('${item.itemName}  ',
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.02)),
                      Text('( ${item.year} )',
                          style: GoogleFonts.poppins(
                              color: colorMainLightGray,
                              fontSize: deviceHeight * 0.015)),
                      const Spacer(),
                      SvgPicture.asset('assets/svgs/like.svg'),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/meta.png',
                              width: deviceWidth * 0.05,
                            ),
                            SizedBox(width: deviceWidth * 0.02),
                            Text(
                              '${item.imdb}',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * 0.016),
                            ),
                            Text(
                              '  / 10',
                              style: GoogleFonts.poppins(
                                  color: colorMainLightGray,
                                  fontSize: deviceHeight * 0.012),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          Image.asset(
                            'assets/images/imdb.png',
                            width: deviceWidth * 0.06,
                          ),
                          SizedBox(width: deviceWidth * 0.02),
                          Text(
                            '${item.metacritic}',
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceHeight * 0.016),
                          ),
                          Text(
                            '  / 10',
                            style: GoogleFonts.poppins(
                                color: colorMainLightGray,
                                fontSize: deviceHeight * 0.012),
                          ),
                        ],
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/rotten_tomatoes_icon.svg',
                            width: deviceWidth * 0.05,
                          ),
                          SizedBox(width: deviceWidth * 0.02),
                          Text(
                            '${item.rottenTomatoes} %',
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceHeight * 0.016),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          Image.asset(
                            'assets/images/letter.png',
                            width: deviceWidth * 0.06,
                          ),
                          SizedBox(width: deviceWidth * 0.02),
                          Text(
                            '${item.letterboxd}',
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceHeight * 0.016),
                          ),
                          Text(
                            '  / 10',
                            style: GoogleFonts.poppins(
                                color: colorMainLightGray,
                                fontSize: deviceHeight * 0.012),
                          ),
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
