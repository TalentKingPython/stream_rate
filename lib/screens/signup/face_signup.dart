import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/captcha/captcha.dart';

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
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        decoration: const BoxDecoration(
            color: colorPrimary,
            image: DecorationImage(
                image: AssetImage("assets/images/onboard1BG.png"),
                fit: BoxFit.cover)),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: deviceHeight * 0.04,
                ),
                LoadImageSimple(
                  image: 'assets/images/streamrate-logo.png',
                  width: deviceWidth * 0.4,
                  imageFit: BoxFit.fill,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      "Sign Up with",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: deviceHeight * 0.03,
                      ),
                    )),
                Container(
                    padding: EdgeInsets.only(bottom: deviceHeight * 0.025),
                    child: Text(
                      "Face ID or Touch ID",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: deviceHeight * 0.03,
                      ),
                    )),
                LoadImageSimple(
                  image: 'assets/images/face_signup_main.png',
                  width: deviceWidth * 0.45,
                  imageFit: BoxFit.cover,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  child: Text(
                      "Create a passkey with your face, fingerprint, or a passcode to log in more quickly than a password. We can't access this biometric data",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: deviceHeight * 0.02,
                      )),
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                Container(
                  width: deviceWidth * 0.8,

                  // padding: const EdgeInsets.fromLTRB(25, 10, 25, 30),
                  child: Column(
                    children: [
                      CustomFillButton(
                        onPressed: () =>
                            openScreenWithResult(context, const Captcha()),
                        isColorBtn: true,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'SIGN UP',
                                style: GoogleFonts.poppins(
                                    color: colorWhite,
                                    fontSize: deviceHeight * 0.018,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: colorWhite)),
                    GestureDetector(
                      onTap: () => openScreenWithResult(context, const Login()),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal:
                                  8), // Add uniform padding of 16 pixels
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [Color(0xFFF79B1E), Color(0xFFED1945)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child: Text(
                              "Log In?",
                              style: GoogleFonts.poppins(
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
                  color: colorMainGray.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child:
                      Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
