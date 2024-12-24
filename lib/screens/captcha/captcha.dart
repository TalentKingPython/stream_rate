import 'package:flutter/material.dart';

import 'package:slider_captcha/slider_captcha.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/screens/login/login.dart';

import 'package:stream_rate/utils/utils.dart';

class Captcha extends StatefulWidget {
  const Captcha({Key? key}) : super(key: key);

  @override
  CaptchaState createState() => CaptchaState();
}

class CaptchaState extends State<Captcha> {
  final controller = SliderController();
  double sliderPosition = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void updateSliderPosition(double position) {
    setState(() {
      sliderPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMainBackground,
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        decoration: const BoxDecoration(
          color: colorPrimary,
          image: DecorationImage(
              image: AssetImage(AppImageAsset.splashBG), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadImageSimple(
                image: 'assets/images/streamrate-logo.png',
                width: deviceWidth * 0.4,
                height: deviceHeight * 0.12,
                imageFit: BoxFit.fill,
              ),
              const SizedBox(height: 50),
              const Text('Drag the slider to fit the puzzle',
                  style: TextStyle(color: colorWhite)),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: colorMainBackground,
                  boxShadow: [
                    BoxShadow(
                      color: colorBlack.withOpacity(0.3),
                      spreadRadius: 10,
                      blurRadius: 30,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: SliderCaptcha(
                      controller: controller,
                      title: '',
                      image: Image.asset('assets/images/puzzle.jpg',
                          width: double.infinity, fit: BoxFit.fitWidth),
                      colorBar: colorMainBackground,
                      imageToBarPadding: 1,
                      icon: Container(
                        decoration: BoxDecoration(
                            color: colorMainBackground.withAlpha(200),
                            boxShadow: [
                              BoxShadow(
                                color: colorMainBackground.withAlpha(200),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(-5, -5),
                              ),
                              BoxShadow(
                                color: colorMainBackground.withAlpha(200),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(5, -5),
                              ),
                              BoxShadow(
                                color: colorMainBackground.withAlpha(200),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(5, 5),
                              ),
                              BoxShadow(
                                color: colorMainBackground.withAlpha(200),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(-5, 5),
                              ),
                              const BoxShadow(
                                blurStyle: BlurStyle.normal,
                                color: colorRed,
                                spreadRadius: 20,
                                blurRadius: 200,
                                offset: Offset(-120, 0),
                              ),
                            ]),
                        child: Image.asset(
                          'assets/images/capture_icon.png',
                        ),
                      ),
                      onConfirm: (value) {
                        if (value) {
                          return openScreenWithResult(context, const Login());
                        } else {
                          return Future.delayed(const Duration(seconds: 1))
                              .then(
                            (_) {
                              controller.create();
                            },
                          );
                        }
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              color: colorPrimary,
                              child: TextButton.icon(
                                icon: const Icon(
                                  Icons.replay_outlined,
                                  color: whitecaptcha,
                                  size: 15,
                                ),
                                label: const Text(
                                  "Refresh",
                                  style: TextStyle(color: whitecaptcha),
                                ),
                                onPressed: () {
                                  Future.delayed(const Duration(seconds: 1))
                                      .then(
                                    (_) {
                                      controller.create();
                                    },
                                  );
                                },
                              )),
                          Container(
                              color: colorPrimary,
                              child: TextButton.icon(
                                icon: const Icon(
                                  Icons.info_outline_rounded,
                                  color: whitecaptcha,
                                  size: 15,
                                ),
                                label: const Text(
                                  "Report A Problem",
                                  style: TextStyle(color: whitecaptcha),
                                ),
                                onPressed: () {},
                              )),
                        ]),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
