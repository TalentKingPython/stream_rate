import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:stream_rate/screens/login/login.dart';
import 'package:stream_rate/screens/signup/email_signup.dart';
import 'package:stream_rate/screens/signup/face_signup.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
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
      body: Padding(
        // Added padding around the entire body
        padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 100), // Adjust the value to your preference
        child: Column(
          children: [
            // Image at the top
            Image.asset(
              'assets/images/streamrate-logo.png', // Your image path here
              width: deviceWidth * 0.4, // Make it responsive to screen width
              height: 110, // Adjust the height to your preference
              fit: BoxFit.fill, // Adjust image fit if necessary
            ),
            Container(
              width: 230,
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: const Text(
                "Create an account to get started",
                textAlign: TextAlign.center,
                style: TextStyle(color: colorWhite, fontSize: 28),
              ),
            ),

            // Existing content inside the container
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  CustomFillButton(
                    isColorBtn: false,
                    onPressed: () =>
                        openScreenWithResult(context, const EmailSignUp()),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/user_add.svg'),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Sign up with Phone or Email',
                            style: TextStyle(color: colorWhite, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  CustomFillButton(
                    isColorBtn: false,
                    onPressed: () =>
                        openScreenWithResult(context, const FaceIdSignUp()),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/face_id.svg'),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Sign up with Face ID',
                            style: TextStyle(color: colorWhite, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  CustomFillButton(
                    isColorBtn: false,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/facebook_icon.svg'),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Continue with Facebook',
                            style: TextStyle(color: colorWhite, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  CustomFillButton(
                    isColorBtn: false,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/apple_icon.svg'),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Continue with Apple',
                            style: TextStyle(color: colorWhite, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  CustomFillButton(
                    isColorBtn: false,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/google_icon.svg'),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Continue with Google',
                            style: TextStyle(color: colorWhite, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: const Text("I will do it later",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: colorWhite,
                      fontSize: 16,
                      decoration: TextDecoration.underline)),
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
                          "Log In",
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
