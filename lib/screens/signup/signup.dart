import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        decoration: const BoxDecoration(
          color: colorPrimary,
          image: DecorationImage(
              image: AssetImage("assets/images/onboard1BG.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/streamrate-logo.png',
                width: deviceWidth * 0.4,
              ),
              Container(
                width: 250,
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Create an account to get started",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(color: colorWhite, fontSize: 26),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                            child: Text(
                              'Sign up with Phone or Email',
                              style: GoogleFonts.poppins(
                                  color: colorWhite, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                            child: Text(
                              'Sign up with Face ID',
                              style: GoogleFonts.poppins(
                                  color: colorWhite, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                            child: Text(
                              'Continue with Facebook',
                              style: GoogleFonts.poppins(
                                  color: colorWhite, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                            child: Text(
                              'Continue with Apple',
                              style: GoogleFonts.poppins(
                                  color: colorWhite, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                            child: Text(
                              'Continue with Google',
                              style: GoogleFonts.poppins(
                                  color: colorWhite, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text("I will do it later",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: 16,
                        decoration: TextDecoration.underline)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style:
                          GoogleFonts.poppins(fontSize: 16, color: colorWhite)),
                  GestureDetector(
                    onTap: () => openScreenWithResult(context, const Login()),
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
                            "Log In",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: colorWhite,
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
      ),
    );
  }
}
