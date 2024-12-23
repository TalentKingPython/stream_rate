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
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
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
                    width: deviceWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                // if img not found
                //
                // Positioned(
                //   top: 140,
                //   left: 50,
                //   right: 50,
                //   child: Opacity(
                //     opacity: 0.1,
                //     child: Image.asset(
                //       AppImageAsset.resultnoimg,
                //       width: 260,
                //     ),
                //   ),
                // ),
                Positioned(
                    left: 20,
                    bottom: deviceHeight * 0.39,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWithPoppins(
                                text: 'JAWS',
                                align: TextAlign.start,
                                color: white,
                                size: 32,
                                weight: FontWeight.normal),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const TextWithPoppins(
                                    text: 'by Steven Spiderman',
                                    align: TextAlign.start,
                                    color: colorMainLightGray,
                                    size: 12,
                                    weight: FontWeight.normal),
                                Text(
                                  " | ",
                                  style: GoogleFonts.poppins(
                                      color: colorMainLightGray),
                                ),
                                const TextWithPoppins(
                                    text: '1955',
                                    align: TextAlign.start,
                                    color: colorMainLightGray,
                                    size: 12,
                                    weight: FontWeight.normal),
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
                Positioned(
                    bottom: deviceHeight * 0.42,
                    right: 20,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            openReportDialog(context);
                          },
                          child: Image.asset(
                            AppImageAsset.dislike,
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            openNotificationAllowDialog(context);
                          },
                          child: Image.asset(
                            AppImageAsset.love,
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            openNotFoundDialog(context);
                          },
                          child: Image.asset(
                            AppImageAsset.share,
                            width: 20,
                          ),
                        )
                      ],
                    )),
                Positioned(
                    left: 20,
                    right: 20,
                    bottom: deviceHeight * 0.335,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Container(
                            alignment: Alignment.center,
                            width: deviceWidth * 0.2,
                            height: deviceHeight * 0.05,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                              AppImageAsset.rate,
                            ))),
                            child: Text('   4.2',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  color: white,
                                )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              width: deviceWidth * 0.26,
                              height: deviceHeight * 0.05,
                              decoration: BoxDecoration(
                                color: whitelow,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImageAsset.trailer,
                                    width: 20,
                                  ),
                                  Text(
                                    '  Trailer',
                                    style:
                                        GoogleFonts.poppins(color: colorWhite),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const TextWithPoppins(
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
                              const TextWithPoppins(
                                  text: '2h 42m',
                                  align: TextAlign.end,
                                  color: colorMainLightGray,
                                  size: 14,
                                  weight: FontWeight.normal)
                            ]),
                      ],
                    )),
                Positioned(
                    left: 20,
                    right: 20,
                    bottom: deviceHeight * 0.12,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppImageAsset.imdb,
                                width: 50, height: 25),
                            TextWithPoppins(
                              text: 'IMDb',
                              align: TextAlign.start,
                              color: white,
                              size: deviceHeight * 0.017,
                              weight: FontWeight.normal,
                            ),
                            const Spacer(),
                            TextWithPoppins(
                                text: '5.5',
                                align: TextAlign.end,
                                color: white,
                                size: deviceHeight * 0.017,
                                weight: FontWeight.normal),
                            TextWithPoppins(
                                text: ' /10',
                                align: TextAlign.end,
                                color: colorMainLightGray,
                                size: deviceHeight * 0.017,
                                weight: FontWeight.normal),
                          ],
                        ),
                        SizedBox(
                          height: deviceWidth * 0.04,
                        ),
                        Row(
                          children: [
                            Image.asset(AppImageAsset.tomato,
                                width: 50, height: 20),
                            TextWithPoppins(
                              text: 'Rotten Tomatoes',
                              align: TextAlign.start,
                              color: white,
                              size: deviceHeight * 0.017,
                              weight: FontWeight.normal,
                            ),
                            const Spacer(),
                            TextWithPoppins(
                                text: '97 %',
                                align: TextAlign.end,
                                color: white,
                                size: deviceHeight * 0.017,
                                weight: FontWeight.normal),
                            // const TextWithPoppins(
                            //     text: '%',
                            //     align: TextAlign.end,
                            //     color: colorMainLightGray,
                            //     size: 14,
                            //     weight: FontWeight.normal),
                          ],
                        ),
                        SizedBox(
                          height: deviceWidth * 0.04,
                        ),
                        Row(
                          children: [
                            Image.asset(AppImageAsset.meta,
                                width: 50, height: 25),
                            TextWithPoppins(
                              text: 'Metacritic',
                              align: TextAlign.start,
                              color: white,
                              size: deviceHeight * 0.017,
                              weight: FontWeight.normal,
                            ),
                            const Spacer(),
                            TextWithPoppins(
                                text: '9.9',
                                align: TextAlign.end,
                                color: white,
                                size: deviceHeight * 0.017,
                                weight: FontWeight.normal),
                            TextWithPoppins(
                                text: ' /10',
                                align: TextAlign.end,
                                color: colorMainLightGray,
                                size: deviceHeight * 0.017,
                                weight: FontWeight.normal),
                          ],
                        ),
                        SizedBox(
                          height: deviceWidth * 0.04,
                        ),
                        Row(
                          children: [
                            Image.asset(AppImageAsset.letter,
                                width: 50, height: 25),
                            TextWithPoppins(
                              text: 'Letterboxd',
                              align: TextAlign.start,
                              color: white,
                              size: deviceHeight * 0.017,
                              weight: FontWeight.normal,
                            ),
                            const Spacer(),
                            TextWithPoppins(
                                text: '9.9',
                                align: TextAlign.end,
                                color: white,
                                size: deviceHeight * 0.017,
                                weight: FontWeight.normal),
                            TextWithPoppins(
                                text: ' /10',
                                align: TextAlign.end,
                                color: colorMainLightGray,
                                size: deviceHeight * 0.017,
                                weight: FontWeight.normal),
                          ],
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    // height: deviceHeight * 0.095,
                    width: deviceWidth,
                    decoration: const BoxDecoration(color: colorItemCard),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('You have only 3 credits left',
                                style: GoogleFonts.poppins(
                                    color: colorWhite, fontSize: 16)),
                            Row(
                              children: [
                                Text('Go Unlimited for ',
                                    style: GoogleFonts.poppins(
                                        color: colorWhite, fontSize: 16)),
                                Text('\$2.99',
                                    style: GoogleFonts.poppins(
                                        color: colorDestination)),
                                Text('eek',
                                    style: GoogleFonts.poppins(
                                        color: colorWhite, fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                        CustomFillButton(
                          onPressed: () => openSubscriptionPage(context),
                          child: Row(children: [
                            Text('SUBSCRIBE',
                                style: GoogleFonts.poppins(
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold)),
                            const Icon(Icons.arrow_forward_ios,
                                size: 15, color: colorWhite)
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 36,
                width: 36,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Color.lerp(colorPrimary, colorWhite, 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child:
                      Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
