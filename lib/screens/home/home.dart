import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stream_rate/constant/constant.dart';

import 'package:stream_rate/screens/favourite/favourite.dart';
import 'package:stream_rate/screens/history/history.dart';
import 'package:stream_rate/screens/login/login.dart';
import 'package:stream_rate/screens/profile/profile.dart';
import 'package:stream_rate/screens/result/result.dart';
import 'package:stream_rate/screens/support/support.dart';
import 'package:stream_rate/screens/invite/invite.dart';
import 'package:stream_rate/screens/voucher/voucher.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/commonView/textwithpoppins.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  late List<CameraDescription> cameras;
  CameraController? controller;

  Future<void> initCamera() async {
    // Request camera permission
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      await Permission.camera.request();
    }

    // Initialize the camera if permission is granted
    if (await Permission.camera.isGranted) {
      cameras = await availableCameras();
      controller = CameraController(cameras[0], ResolutionPreset.high);
      await controller!.initialize();
      setState(() {}); // Update the state to reflect the camera initialization
    } else {
      // Handle the case where permission is denied
      print('Camera permission denied');
    }
  }

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMainBackground,
      body: SizedBox(
        width: deviceWidth,
        height: deviceHeight,
        child: Stack(
          children: [
            if (controller != null && controller!.value.isInitialized)
              Positioned.fill(
                child: CameraPreview(controller!),
              ),
            Positioned(
                left: 20,
                right: 20,
                top: deviceHeight / 5,
                child: Image.asset(
                  AppImageAsset.corners,
                  width: deviceWidth,
                )),
            Positioned(
                bottom: 10,
                right: 50,
                left: 50,
                child: Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () async {
                      openScreenWithResult(context, const Result());

                      try {
                        final image = await controller!.takePicture();
                        // Save the image to a file or do something with it
                        print('Picture taken: ${image.path}');
                      } catch (e) {
                        print('Error taking picture: $e');
                      }
                    },
                    child: Image.asset(
                      AppImageAsset.remote,
                      width: 140,
                      height: 140,
                    ),
                  ),
                )),
            Positioned(
                left: 50,
                right: 50,
                bottom: 5,
                child: Container(
                  width: deviceWidth * 0.3,
                  height: deviceHeight * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: whiteLowOpacity,
                    image: const DecorationImage(
                        image: AssetImage(
                      AppImageAsset.bottombar,
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          openScreenWithResult(context, const Profile());
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImageAsset.profile,
                              width: deviceWidth * 0.05,
                              height: deviceHeight * 0.025,
                            ),
                            const TextWithPoppins(
                                text: 'Profile',
                                align: TextAlign.center,
                                color: colorWhite,
                                size: 12,
                                weight: FontWeight.normal)
                          ],
                        ),
                      ),
                      SizedBox(width: deviceWidth * 0.05),
                      InkWell(
                        onTap: () {
                          openScreenWithResult(context, const History());
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImageAsset.history,
                              width: deviceWidth * 0.05,
                              height: deviceHeight * 0.025,
                            ),
                            const TextWithPoppins(
                                text: 'History',
                                align: TextAlign.center,
                                color: colorWhite,
                                size: 12,
                                weight: FontWeight.normal)
                          ],
                        ),
                      ),
                      SizedBox(width: deviceWidth * 0.15),
                      InkWell(
                        onTap: () {
                          openScreenWithResult(context, const Favourite());
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImageAsset.favorites,
                              width: deviceWidth * 0.05,
                              height: deviceHeight * 0.025,
                            ),
                            const TextWithPoppins(
                                text: 'Favorites',
                                align: TextAlign.center,
                                color: colorWhite,
                                size: 12,
                                weight: FontWeight.normal)
                          ],
                        ),
                      ),
                      SizedBox(width: deviceWidth * 0.05),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: darkblue,
                            builder: (context) => const CustomBottomSheet(),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImageAsset.more,
                              width: deviceWidth * 0.05,
                              height: deviceHeight * 0.025,
                            ),
                            const TextWithPoppins(
                                text: 'More',
                                align: TextAlign.center,
                                color: colorWhite,
                                size: 12,
                                weight: FontWeight.normal)
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Blurred background
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Container(
            height: 80,
          ),
        ),
        // Bottom sheet content
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: darkblue,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Orange slider at the top center
              Container(
                width: 50,
                height: 7,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [onBoardingRed, onBoardingOrange],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.circular(2.5),
                ),
                margin: const EdgeInsets.only(bottom: 16),
              ),
              // Close button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                leading: Image.asset(
                  AppImageAsset.voucherwhite,
                  width: 20,
                ),
                title: const TextWithPoppins(
                  text: 'Redeem Voucher',
                  align: TextAlign.start,
                  color: colorWhite,
                  size: 16,
                  weight: FontWeight.normal,
                ),
                onTap: () => openScreenWithResult(context, const Voucher()),
              ),
              ListTile(
                  leading: Image.asset(
                    AppImageAsset.invite,
                    width: 20,
                  ),
                  title: const TextWithPoppins(
                    text: 'Invite People',
                    align: TextAlign.start,
                    color: colorWhite,
                    size: 16,
                    weight: FontWeight.normal,
                  ),
                  onTap: () => openScreenWithResult(context, const Invite())),
              ListTile(
                leading: Image.asset(
                  AppImageAsset.contact,
                  width: 20,
                ),
                title: const TextWithPoppins(
                  text: 'Contact Support',
                  align: TextAlign.start,
                  color: colorWhite,
                  size: 16,
                  weight: FontWeight.normal,
                ),
                onTap: () {
                  openScreenWithResult(context, const Support());
                },
              ),
              ListTile(
                leading: Image.asset(
                  AppImageAsset.logout,
                  color: onBoardingRed,
                  width: 20,
                ),
                title: const TextWithPoppins(
                  text: 'Log Out',
                  align: TextAlign.start,
                  color: onBoardingRed,
                  size: 16,
                  weight: FontWeight.normal,
                ),
                onTap: () {
                  openScreen(context, const Login());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
