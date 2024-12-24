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
          padding: const EdgeInsets.symmetric(
              horizontal: 30), // Adjust the value to your preference
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image at the top
              Image.asset(
                'assets/images/logowithname.png',
                width: deviceWidth * 0.4,
              ),
              Container(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    "Welcome Back",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorWhite,
                      fontSize: 24,
                    ),
                  )),

              Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    "Log in to continue",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: colorWhite,
                      fontSize: 16,
                    ),
                  )),

              // Existing content inside the container
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: [
                    CustomFillButton(
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
                          SvgPicture.asset('assets/svgs/face_id.svg'),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Log in with Face ID',
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style:
                          GoogleFonts.poppins(fontSize: 16, color: colorWhite)),
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
                          child: Text(
                            "Sign Up",
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
