import 'package:flutter/material.dart';
import 'package:slider_captcha/slider_captcha.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/screens/login/login.dart';
import 'package:stream_rate/utils/utils.dart';

class Capture extends StatelessWidget {
  const Capture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => _CaptureContent(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
      ),
    );
  }
}

class _CaptureContent extends StatefulWidget {
  final double width;
  final double height;

  const _CaptureContent({
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  _CaptureContentState createState() => _CaptureContentState();
}

class _CaptureContentState extends State<_CaptureContent> {
  final controller = SliderController();
  double sliderPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMainBackground,
      body: Container(
        width: widget.width,
        height: widget.height,
        decoration: const BoxDecoration(
          color: colorPrimary,
          image: DecorationImage(
            image: AssetImage(AppImageAsset.splashBG),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: widget.width * 0.08,
                vertical: widget.height * 0.02,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLogo(),
                  SizedBox(height: widget.height * 0.06),
                  _buildInstructions(),
                  SizedBox(height: widget.height * 0.06),
                  _buildCaptchaContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return LoadImageSimple(
      image: 'assets/images/logowithname.png',
      width: widget.width * 0.4,
      height: widget.height * 0.12,
      imageFit: BoxFit.contain,
    );
  }

  Widget _buildInstructions() {
    return Text(
      'Drag the slider to fit the puzzle',
      style: TextStyle(
        color: colorWhite,
        fontSize: widget.width * 0.04,
      ),
    );
  }

  Widget _buildCaptchaContainer() {
    return Container(
      width: widget.width * 0.9,
      padding: EdgeInsets.all(widget.width * 0.025),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.width * 0.03),
        color: colorMainBackground,
        boxShadow: [
          BoxShadow(
            color: colorBlack.withOpacity(0.3),
            spreadRadius: widget.width * 0.02,
            blurRadius: widget.width * 0.07,
            offset: Offset(0, widget.width * 0.007),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildSliderCaptcha(),
          SizedBox(height: widget.height * 0.02),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildSliderCaptcha() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.width * 0.03),
      child: SliderCaptcha(
        controller: controller,
        image: Image.asset(
          'assets/images/puzzle.jpg',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        colorBar: colorMainBackground,
        imageToBarPadding: 1,
        icon: _buildCaptchaIcon(),
        onConfirm: _handleCaptchaConfirm,
      ),
    );
  }

  Widget _buildCaptchaIcon() {
    return Container(
      decoration: BoxDecoration(
        color: colorMainBackground.withAlpha(200),
        boxShadow: _buildIconShadows(),
      ),
      child: Image.asset('assets/images/capture_icon.png'),
    );
  }

  List<BoxShadow> _buildIconShadows() {
    return [
      for (var offset in const [
        Offset(-5, -5),
        Offset(5, -5),
        Offset(5, 5),
        Offset(-5, 5)
      ])
        BoxShadow(
          color: colorMainBackground.withAlpha(200),
          spreadRadius: 2,
          blurRadius: 5,
          offset: offset,
        ),
      BoxShadow(
        blurStyle: BlurStyle.normal,
        color: colorRed,
        spreadRadius: widget.width * 0.05,
        blurRadius: widget.width * 0.5,
        offset: Offset(-widget.width * 0.3, 0),
      ),
    ];
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildActionButton(
          icon: Icons.replay_outlined,
          label: 'Refresh',
          onPressed: _handleRefresh,
        ),
        _buildActionButton(
          icon: Icons.info_outline_rounded,
          label: 'Report A Problem',
          onPressed: _handleReport,
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Container(
      color: colorPrimary,
      child: TextButton.icon(
        icon: Icon(icon, color: whitecaptcha, size: widget.width * 0.04),
        label: Text(
          label,
          style: TextStyle(
            color: whitecaptcha,
            fontSize: widget.width * 0.035,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }

  Future<bool> _handleCaptchaConfirm(bool value) async {
    if (value) {
      openScreenWithResult(context, const Login());
      return true;
    }
    await Future.delayed(const Duration(seconds: 1));
    controller.create();
    return false;
  }

  void _handleRefresh() {
    Future.delayed(const Duration(seconds: 1)).then((_) => controller.create());
  }

  void _handleReport() {
    // TODO: Implement report functionality
  }
}

/**
 * import 'package:flutter/material.dart';

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
                image: 'assets/images/logowithname.png',
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

 */