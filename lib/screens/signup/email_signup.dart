import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/screens/login/login.dart';
import 'package:stream_rate/screens/signup/confirm_email.dart';
import 'package:stream_rate/utils/utils.dart';

class EmailSignUp extends StatefulWidget {
  const EmailSignUp({Key? key}) : super(key: key);

  @override
  EmailSignUpState createState() => EmailSignUpState();
}

class EmailSignUpState extends State<EmailSignUp> {
  bool isHidden = true;
  bool isChecked = false;

  void onSubmit() {
    openScreenWithResult(context, const ConfirmEmail());
  }

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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadImageSimple(
                  image: 'assets/images/streamrate-logo.png',
                  width: deviceWidth * 0.4,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Create an account",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: colorWhite, fontSize: 24),
                  ),
                ),
                const CustomTextFormField(
                  labelText: 'Email',
                  prefixIcon:
                      Icon(Icons.email_outlined, color: colorMainLightGray),
                ),
                const SizedBox(height: 20),
                const CustomTextFormField(
                  labelText: 'Phone',
                  prefixIcon:
                      Icon(Icons.phone_outlined, color: colorMainLightGray),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  isPassword: true,
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outlined,
                      color: colorMainLightGray),
                  suffixIcon: Icon(
                      isHidden
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: colorMainLightGray),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  isPassword: true,
                  labelText: 'Confirm Password',
                  prefixIcon:
                      const Icon(Icons.lock_open, color: colorMainLightGray),
                  suffixIcon: Icon(
                      isHidden
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: colorMainLightGray),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: Text('Do you have a voucher code?',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: colorWhite)),
                ),
                const SizedBox(height: 10),
                const CustomTextFormField(
                  labelText: 'Voucher Code',
                  prefixIcon:
                      Icon(Icons.discount_outlined, color: colorMainLightGray),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: isChecked
                                    ? colorOfferDiscountRed
                                    : colorMainLightGray),
                            color: isChecked
                                ? colorOfferDiscountRed
                                : Colors.transparent,
                          ),
                          child: isChecked
                              ? const Icon(Icons.check,
                                  size: 20, color: colorWhite)
                              : null,
                        ),
                      ),
                      Text('   I accept the ',
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: 18)),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Terms & Conditions',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: colorWhite,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomFillButton(
                  onPressed: onSubmit,
                  width: double.infinity,
                  height: 60,
                  child: Text(
                    'CREATE ACCOUNT',
                    style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: colorWhite)),
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
