import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/commonView/textwithpoppins.dart';
import 'package:stream_rate/utils/utils.dart';
import 'result_bloc.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {
  ResultBloc? _bloc;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImageAsset.resultBG), fit: BoxFit.fill),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Image.asset(
                    AppImageAsset.movieimg,
                    width: width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: width * 0.05,
                  bottom: height * 0.39,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWithPoppins(
                          text: 'JAWS',
                          align: TextAlign.start,
                          color: white,
                          size: width * 0.08,
                          weight: FontWeight.normal),
                      Row(
                        children: [
                          TextWithPoppins(
                              text: 'by Steven Spiderman',
                              align: TextAlign.start,
                              color: colorMainLightGray,
                              size: width * 0.03,
                              weight: FontWeight.normal),
                          Text(" | ",
                              style: GoogleFonts.poppins(
                                  color: colorMainLightGray)),
                          TextWithPoppins(
                              text: '1955',
                              align: TextAlign.start,
                              color: colorMainLightGray,
                              size: width * 0.03,
                              weight: FontWeight.normal),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: height * 0.42,
                    right: width * 0.05,
                    child: Row(
                      children: [
                        _buildIconButton(AppImageAsset.dislike,
                            () => openReportDialog(context)),
                        SizedBox(width: width * 0.05),
                        _buildIconButton(AppImageAsset.love,
                            () => openNotificationAllowDialog(context)),
                        SizedBox(width: width * 0.05),
                        _buildIconButton(AppImageAsset.share,
                            () => openNotFoundDialog(context)),
                      ],
                    )),
                Positioned(
                  left: width * 0.05,
                  right: width * 0.05,
                  bottom: height * 0.33,
                  child: _buildRatingSection(width, height),
                ),
                Positioned(
                  left: width * 0.05,
                  right: width * 0.05,
                  bottom: height * 0.1,
                  child: _buildRatingsList(width, height),
                ),
                Positioned(
                  bottom: 0,
                  child: _buildSubscriptionBar(width, height),
                ),
                _buildBackButton(width, height),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(String asset, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(asset, width: 20),
    );
  }

  Widget _buildRatingSection(double width, double height) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: width * 0.2,
              height: height * 0.05,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(AppImageAsset.rate))),
              child: Text(
                '   4.2',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(color: white),
              ),
            ),
            SizedBox(width: width * 0.02),
            _buildTrailerButton(width, height),
          ],
        ),
        _buildMovieInfo(),
      ],
    );
  }

  Widget _buildTrailerButton(double width, double height) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(width * 0.02),
        width: width * 0.26,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: whitelow,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImageAsset.trailer, width: width * 0.05),
            Text(
              '  Trailer',
              style: GoogleFonts.poppins(color: colorWhite),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMovieInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextWithPoppins(
            text: "Terror",
            align: TextAlign.end,
            color: colorMainLightGray,
            size: 14,
            weight: FontWeight.normal),
        const SizedBox(width: 5),
        Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: colorMainLightGray)),
        const SizedBox(width: 5),
        TextWithPoppins(
            text: '2h 42m',
            align: TextAlign.end,
            color: colorMainLightGray,
            size: 14,
            weight: FontWeight.normal)
      ],
    );
  }

  Widget _buildRatingsList(double width, double height) {
    final ratingItems = [
      {
        'asset': AppImageAsset.imdb,
        'title': 'IMDb',
        'rating': '5.5',
        'total': '/10'
      },
      {
        'asset': AppImageAsset.tomato,
        'title': 'Rotten Tomatoes',
        'rating': '97 %',
        'total': ''
      },
      {
        'asset': AppImageAsset.meta,
        'title': 'Metacritic',
        'rating': '9.9',
        'total': '/10'
      },
      {
        'asset': AppImageAsset.letter,
        'title': 'Letterboxd',
        'rating': '9.9',
        'total': '/10'
      },
    ];

    return Column(
      children: ratingItems
          .map((item) => Padding(
                padding: EdgeInsets.only(bottom: height * 0.02),
                child: _buildRatingItem(item, width, height),
              ))
          .toList(),
    );
  }

  Widget _buildRatingItem(
      Map<String, String> item, double width, double height) {
    return Row(
      children: [
        Image.asset(item['asset']!, width: width * 0.12, height: height * 0.03),
        TextWithPoppins(
          text: item['title']!,
          align: TextAlign.start,
          color: white,
          size: height * 0.017,
          weight: FontWeight.normal,
        ),
        const Spacer(),
        TextWithPoppins(
          text: item['rating']!,
          align: TextAlign.end,
          color: white,
          size: height * 0.017,
          weight: FontWeight.normal,
        ),
        TextWithPoppins(
          text: item['total']!,
          align: TextAlign.end,
          color: colorMainLightGray,
          size: height * 0.017,
          weight: FontWeight.normal,
        ),
      ],
    );
  }

  Widget _buildSubscriptionBar(double width, double height) {
    return Container(
      padding: EdgeInsets.all(width * 0.04),
      width: width,
      decoration: const BoxDecoration(color: colorItemCard),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have only 3 credits left',
                  style: GoogleFonts.poppins(
                      color: colorWhite, fontSize: width * 0.04)),
              Row(
                children: [
                  Text('Go Unlimited for ',
                      style: GoogleFonts.poppins(
                          color: colorWhite, fontSize: width * 0.04)),
                  Text('\$2.99',
                      style: GoogleFonts.poppins(color: colorDestination)),
                  Text('eek',
                      style: GoogleFonts.poppins(
                          color: colorWhite, fontSize: width * 0.04)),
                ],
              ),
            ],
          ),
          CustomFillButton(
            onPressed: () => openSubscriptionPage(context),
            child: Row(
              children: [
                Text('SUBSCRIBE',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontWeight: FontWeight.bold)),
                const Icon(Icons.arrow_forward_ios, size: 15, color: colorWhite)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBackButton(double width, double height) {
    return Positioned(
      top: height * 0.06,
      left: width * 0.05,
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          height: width * 0.09,
          width: width * 0.09,
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          decoration: BoxDecoration(
            color: Color.lerp(colorPrimary, colorWhite, 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
          ),
        ),
      ),
    );
  }
}
