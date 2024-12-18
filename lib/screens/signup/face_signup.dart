import 'package:flutter/material.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/capture/capture.dart';

import 'package:stream_rate/screens/login/login.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class FaceIdSignUp extends StatefulWidget {
  const FaceIdSignUp({Key? key}) : super(key: key);

  @override
  FaceIdSignUpState createState() => FaceIdSignUpState();
}

class FaceIdSignUpState extends State<FaceIdSignUp> {
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
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
          child: Column(
            children: [
              LoadImageSimple(
                image: 'assets/images/streamrate-logo.png',
                width: deviceWidth * 0.4,
                height: 100,
                imageFit: BoxFit.fill,
              ),
              Container(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: const Text(
                    "Sign Up with",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: 24,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: const Text(
                    "Face ID or Touch ID",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: 24,
                    ),
                  )),
              LoadImageSimple(
                image: 'assets/images/face_signup_main.png',
                width: deviceWidth * 0.5,
                height: 210,
                imageFit: BoxFit.fill,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
                child: const Text(
                    "Create a passkey with your face, fingerprint, or a passcode to log in more quickly than a password. We can't access this biometric data",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: 16,
                    )),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 30),
                child: Column(
                  children: [
                    CustomFillButton(
                      onPressed: () =>
                          openScreenWithResult(context, const Capture()),
                      isColorBtn: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(color: colorWhite, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",
                      style: TextStyle(fontSize: 16, color: colorWhite)),
                  GestureDetector(
                    onTap: () => openScreenWithResult(context, const Login()),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8), // Add uniform padding of 16 pixels
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [Color(0xFFF79B1E), Color(0xFFED1945)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds);
                          },
                          child: const Text(
                            "Log In?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors
                                  .white, // The base color won't be visible due to ShaderMask
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 36,
              width: 36,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
