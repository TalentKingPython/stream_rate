import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/screens/home/home.dart';
import 'package:stream_rate/screens/signup/signup.dart';
import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
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
        child: Padding(
          // Added padding around the entire body
          padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.035, vertical: deviceHeight * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: deviceHeight * .12),
              Image.asset(
                'assets/images/streamrate-logo.png',
                width: deviceHeight * 0.17,
                height: deviceHeight * .11,
                fit: BoxFit.fill,
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: deviceHeight * 0.06, bottom: deviceHeight * 0.04),
                  child: Text(
                    "Welcome back",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorWhite,
                      fontSize: deviceHeight * 0.024,
                    ),
                  )),

              Container(
                  padding: EdgeInsets.only(bottom: deviceHeight * 0.015),
                  child: Text(
                    "Log in to continue",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorWhite,
                      fontSize: deviceHeight * 0.02,
                    ),
                  )),

              // Existing content inside the container
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.035,
                    vertical: deviceHeight * 0.007),
                child: Column(
                  children: [
                    CustomFillButton(
                      height: deviceHeight * 0.065,
                      onPressed: () =>
                          openScreenWithResult(context, const Home()),
                      isColorBtn: false,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svgs/user_add.svg'),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Log in with Phone or Email',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * 0.016),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.035,
                    vertical: deviceHeight * 0.007),
                child: Column(
                  children: [
                    CustomFillButton(
                      height: deviceHeight * 0.065,
                      isColorBtn: false,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svgs/face_id.svg'),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Log in with Face ID',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * 0.016),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.035,
                    vertical: deviceHeight * 0.007),
                child: Column(
                  children: [
                    CustomFillButton(
                      height: deviceHeight * 0.065,
                      isColorBtn: false,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svgs/facebook_icon.svg'),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Continue with Facebook',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * .016),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.035,
                    vertical: deviceHeight * 0.007),
                child: Column(
                  children: [
                    CustomFillButton(
                      height: deviceHeight * 0.065,
                      isColorBtn: false,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svgs/apple_icon.svg'),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Continue with Apple',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * .016),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.035,
                    vertical: deviceHeight * 0.007),
                child: Column(
                  children: [
                    CustomFillButton(
                      height: deviceHeight * 0.065,
                      isColorBtn: false,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svgs/google_icon.svg'),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Continue with Google',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * .016),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: GoogleFonts.poppins(
                          fontSize: deviceHeight * 0.017, color: colorWhite)),
                  GestureDetector(
                    onTap: () => openScreenWithResult(context, const SignUp()),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [Color(0xFFF79B1E), Color(0xFFED1945)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds);
                          },
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.poppins(
                              fontSize: deviceHeight * 0.016,
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: deviceHeight * .02),
            ],
          ),
        ),
      ),
    );
  }
}
