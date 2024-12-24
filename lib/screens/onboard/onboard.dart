import 'package:flutter/material.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/screens/onboard/onboard_one.dart';
import 'package:stream_rate/screens/onboard/onboard_three.dart';
import 'package:stream_rate/screens/onboard/onboard_two.dart';

import 'package:stream_rate/screens/signup/signup.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  OnboardState createState() => OnboardState();
}

class OnboardState extends State<Onboard> {
  final CarouselSliderController controller = CarouselSliderController();
  int currentPage = 0;

  final List<Widget> pages = [
    const OnboardOne(),
    const OnboardTwo(),
    const OnboardThree()
  ];

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
      backgroundColor: colorMainBackground,
      body: Stack(children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: deviceHeight,
            viewportFraction: 1,
            enlargeCenterPage: false,
            autoPlay: false,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentPage = index;
              });
            },
          ),
          items: pages.map((page) {
            return SizedBox(
              width: deviceWidth,
              height: deviceHeight,
              child: page,
            );
          }).toList(),
        ),
        Positioned(bottom: 0, right: 0, left: 0, child: bottomSection())
      ]),
    );
  }

  Widget bottomSection() {
    return Container(
      width: deviceWidth,
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFillButton(
              isColorBtn: false,
              onPressed: () {
                openScreenWithResult(context, const SignUp());
              },
              width: deviceWidth * 0.2,
              child: Text('SKIP',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: deviceAverageSize * 0.016,
                      color: colorWhite))),
          DotsIndicator(
            dotsCount: 3,
            position: currentPage,
            decorator: DotsDecorator(
              color: colorMainGray,
              activeColor: colorMainGray,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(deviceAverageSize * 0.005)),
            ),
          ),
          CustomFillButton(
            width: deviceWidth * 0.2,
            onPressed: () {
              if (currentPage == 2) {
                openScreenWithResult(context, const SignUp());
              }
              controller.nextPage();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'NEXT',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: deviceAverageSize * 0.016,
                      color: colorWhite),
                ),
                const SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios,
                    color: colorWhite, size: deviceAverageSize * 0.015)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
