import 'package:flutter/material.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
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
      body: SizedBox(
        height: deviceHeight,
        child: Stack(children: [
          CarouselSlider(
            carouselController: controller,
            options: CarouselOptions(
              height: deviceHeight - 80,
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
            items: [firstBoard(), secondBoard(), thirdBoard()],
          ),
          Positioned(bottom: 0, right: 0, left: 0, child: bottomSection())
        ]),
      ),
    );
  }

  Widget firstBoard() {
    return Column(
      children: const [
        SizedBox(height: 150),
        LoadImageSimple(
            image: 'assets/images/onboarding_logo.png', height: 100),
        SizedBox(height: 70),
        Text(
          'Welcome!',
          style: TextStyle(color: colorWhite, fontSize: 30),
        ),
        Text(
          'We are happy to see you here.',
          style: TextStyle(color: colorWhite, fontSize: 20),
        ),
        SizedBox(height: 70),
        LoadImageSimple(
            image: 'assets/images/onboarding_image.png', height: 160),
        SizedBox(height: 40),
        Text(
          'StreamRate is very easy to use.',
          style: TextStyle(
              color: colorWhite, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'You will receive 5 free',
          style: TextStyle(color: colorWhite, fontSize: 20),
        ),
        Text(
          'credits every month.',
          style: TextStyle(color: colorWhite, fontSize: 20),
        ),
      ],
    );
  }

  Widget secondBoard() {
    return Column(
      children: const [LoadImageSimple(image: 'assets/images/onboarding2.png')],
    );
  }

  Widget thirdBoard() {
    return Column(
      children: const [LoadImageSimple(image: 'assets/images/onboarding3.png')],
    );
  }

  Widget bottomSection() {
    return Container(
      width: deviceWidth,
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomFillButton(isColorBtn: false, width: 85, child: Text('')),
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
              children: const [
                Text(
                  'NEXT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: colorWhite),
                ),
                Icon(Icons.arrow_forward_ios, color: colorWhite, size: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
