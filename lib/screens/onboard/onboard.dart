import 'package:flutter/material.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/image_assets.dart';
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
          items: [1, 2, 3].map((e) {
            return Container(
              width: deviceWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/onboarding/OnBoarding${e}BG.png'),
                  fit: BoxFit.cover,
                ),
              ),
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
              width: 85,
              child: const Text('SKIP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          CustomFillButton(
            width: 85,
            onPressed: () {
              if (currentPage == 2) {
                openScreenWithResult(context, const SignUp());
              }
              controller.nextPage();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'NEXT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: colorWhite),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, color: colorWhite, size: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
