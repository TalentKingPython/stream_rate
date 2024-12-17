import 'package:flutter/material.dart';

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
  final List<String> imgList = ['assets/images/onboarding1.png'];

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
            options: CarouselOptions(
              height: deviceHeight - 80,
              viewportFraction: 1,
              enlargeCenterPage: false,
              autoPlay: false,
              enableInfiniteScroll: false,
            ),
            // items: [1, 2, 3]
            //     .map((item) =>
            //         LoadImageSimple(image: 'assets/images/onboarding$item.png'))
            //     .toList(),
            items: [firstBoard()],
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
          style: TextStyle(color: colorWhite, fontSize: 26),
        ),
        SizedBox(height: 70),
        LoadImageSimple(
            image: 'assets/images/onboarding_image.png', height: 150),
      ],
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
          CustomFillButton(
            width: 85,
            // onPressed: () => openScreenWithResult(context, const SignUp()),
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
