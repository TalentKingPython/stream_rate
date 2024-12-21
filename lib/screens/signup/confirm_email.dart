import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/login/login.dart';
import 'package:stream_rate/utils/utils.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({Key? key}) : super(key: key);

  @override
  ConfirmEmailState createState() => ConfirmEmailState();
}

class ConfirmEmailState extends State<ConfirmEmail> {
  final TextEditingController _textEditingController = TextEditingController();
  FocusNode otpFocusNode = FocusNode();

  void onSubmit() {}

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoadImageSimple(
                image: 'assets/images/streamrate-logo.png',
                width: deviceWidth * 0.4,
                height: 100,
                imageFit: BoxFit.fill,
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, bottom: 25),
                child: Text(
                  "Confirm Email",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(color: colorWhite, fontSize: 24),
                ),
              ),
              Text('We sent a 4-digit code to your',
                  style: GoogleFonts.poppins(color: colorWhite, fontSize: 20)),
              Text('email address to confirm it’s yours.',
                  style: GoogleFonts.poppins(color: colorWhite, fontSize: 20)),
              const SizedBox(height: 30),
              Text('Please check your inbox and enter',
                  style: GoogleFonts.poppins(color: colorWhite, fontSize: 20)),
              Text('the code below.',
                  style: GoogleFonts.poppins(color: colorWhite, fontSize: 20)),
              const SizedBox(height: 30),
              Container(
                margin: EdgeInsetsDirectional.only(top: deviceHeight * 0.01),
                width: double.infinity,
                child: PinCodeTextField(
                  focusNode: otpFocusNode,
                  length: 4,
                  obscureText: false,
                  controller: _textEditingController,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.scale,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('^[0-9]*\$'))
                  ],
                  textStyle:
                      GoogleFonts.poppins(color: colorWhite, fontSize: 20),
                  hintCharacter: "0",
                  hintStyle: GoogleFonts.poppins(
                      color: colorMainLightGray, fontSize: 20),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(25),
                    fieldHeight: deviceAverageSize * 0.09,
                    fieldWidth: deviceAverageSize * 0.12,
                    borderWidth: 1,
                    inactiveBorderWidth: 1,
                    activeBorderWidth: 1,
                    selectedBorderWidth: 1,
                    activeColor: colorMainLightGray,
                    selectedColor: colorMainLightGray,
                    inactiveColor: colorMainLightGray,
                    activeFillColor: colorPrimary,
                    selectedFillColor: colorPrimary,
                    inactiveFillColor: colorPrimary,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onChanged: (value) {
                    // bloc!.changeOtp(value);
                  },
                  beforeTextPaste: (text) {
                    return false;
                  },
                  onCompleted: (value) {
                    // openScreenWithResult(context, const HomeMainV1());
                    // bloc!.verify();
                  },
                  appContext: context,
                ),
              ),
              const Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Didn\'t receive the code?',
                  style: GoogleFonts.poppins(color: colorWhite, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend it',
                    style:
                        GoogleFonts.poppins(color: colorYellow, fontSize: 18),
                  ),
                ),
              ]),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomFillButton(
                    onPressed: () {
                      openScreenWithResult(context, const Login());
                    },
                    isColorBtn: false,
                    width: deviceWidth * .39,
                    height: 60,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.arrow_back_ios,
                            color: colorWhite, size: 15),
                        Text(
                          'Back',
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  CustomFillButton(
                    onPressed: onSubmit,
                    width: deviceWidth * .39,
                    height: 60,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.check, color: colorWhite, size: 15),
                        Text(
                          'CONFIRM',
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
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
                color: colorWhite.withOpacity(0.1),
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
