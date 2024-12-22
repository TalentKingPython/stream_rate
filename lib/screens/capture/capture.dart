import 'package:flutter/material.dart';

import 'package:slider_captcha/slider_captcha.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/login/login.dart';

import 'package:stream_rate/utils/utils.dart';

class Capture extends StatefulWidget {
  const Capture({Key? key}) : super(key: key);

  @override
  CaptureState createState() => CaptureState();
}

class CaptureState extends State<Capture> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
        child: Column(
          children: [
            LoadImageSimple(
              image: 'assets/images/streamrate-logo.png',
              width: deviceWidth * 0.4,
              height: 100,
              imageFit: BoxFit.fill,
            ),
            const SizedBox(height: 50),
            const Text('Drag the slider to fit the puzzle',
                style: TextStyle(color: colorWhite)),
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: colorBlack.withOpacity(0.3),
                    spreadRadius: 10,
                    blurRadius: 30,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: SliderCaptcha(
                  
                  controller: controller,
                  title: '',
                  image: Image.asset('assets/images/puzzle.jpg',
                      width: double.infinity, fit: BoxFit.fitWidth),
                  colorBar: colorPrimary,
                  icon: Container(
                    decoration:
                        const BoxDecoration(color: colorPrimary, boxShadow: [
                      BoxShadow(
                        color: colorPrimary,
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(5, 5),
                      ),
                      BoxShadow(
                        color: colorPrimary,
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(-5, 5),
                      ),
                    ]),
                    child: Image.asset('assets/images/capture_icon.png'),
                  ),
                  onConfirm: (value) {
                    if (value) {
                      return openScreenWithResult(context, const Login());
                    } else {
                      return Future.delayed(const Duration(seconds: 2)).then(
                        (_) {
                          controller.create();
                        },
                      );
                    }
                  },
                ),
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
                            color: whitelow,
                            size: 15,
                          ),
                          label: const Text(
                            "Refresh",
                            style: TextStyle(color: whitelow),
                          ),
                          onPressed: () {
                            Future.delayed(const Duration(seconds: 1)).then(
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
                            color: whitelow,
                            size: 15,
                          ),
                          label: const Text(
                            "Report A Problem",
                            style: TextStyle(color: whitelow),
                          ),
                          onPressed: () {
                            ///TODO REPORT A PROBLEM ?
                          },
                        )),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
class SliderBackgroundPainter extends CustomPainter {
  final double sliderPosition;

  SliderBackgroundPainter(this.sliderPosition);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
        colors: [Colors.orange.withOpacity(0.5), Colors.red.withOpacity(0.5)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width * sliderPosition, size.height));

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width * sliderPosition, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
