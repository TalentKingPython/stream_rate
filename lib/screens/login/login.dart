import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:stream_rate/screens/signup/signup.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  LogInState createState() => LogInState();
}

class LogInState extends State<LogIn> {
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
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: const Text(
                  "Welcome Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorWhite,
                    fontSize: 24,
                  ),
                )),

            Container(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: const Text(
                  "Log in to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorWhite,
                    fontSize: 24,
                  ),
                )),

            // Existing content inside the container
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
                        SvgPicture.asset('assets/svgs/user_add.svg'),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Log in with Phone or Email',
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
                    // onPressed: () =>
                    //     openScreenWithResult(context, const FaceIdSignUp()),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/face_id.svg'),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Log in with Face ID',
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
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 50),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(fontSize: 16, color: colorWhite)),
                GestureDetector(
                  onTap: () => openScreenWithResult(context, const SignUp()),
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
                          "Sign Up?",
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
