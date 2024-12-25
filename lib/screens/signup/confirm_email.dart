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
    _textEditingController.dispose();
    otpFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMainBackground,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.08, vertical: deviceHeight * 0.12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoadImageSimple(
                  image: 'assets/images/logowithname.png',
                  width: deviceWidth * 0.4,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: deviceHeight * 0.06, bottom: deviceHeight * 0.03),
                  child: Text(
                    "Confirm Email",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceHeight * 0.024),
                  ),
                ),
                Text('We sent a 4-digit code to your',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceHeight * 0.018)),
                Text('email address to confirm it’s yours.',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceHeight * 0.018)),
                SizedBox(height: deviceHeight * 0.02),
                Text('Please check your inbox and enter',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceHeight * 0.018)),
                Text('the code below.',
                    style: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceHeight * 0.018)),
                SizedBox(height: deviceHeight * 0.05),
                Container(
                  width: double.infinity,
                  height: deviceHeight * 0.1,
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
                    textStyle: GoogleFonts.poppins(
                        color: colorWhite, fontSize: deviceHeight * 0.025),
                    hintCharacter: "0",
                    hintStyle: GoogleFonts.poppins(
                        color: colorMainLightGray,
                        fontSize: deviceHeight * 0.025),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(25),
                      fieldHeight: deviceHeight * 0.06,
                      fieldWidth: deviceHeight * 0.07,
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
                      // Handle OTP change
                    },
                    beforeTextPaste: (text) {
                      return false;
                    },
                    onCompleted: (value) {
                      // Handle OTP completion
                    },
                    appContext: context,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.15),
              ],
            ),
          ),
          Positioned(
            bottom: deviceHeight * 0,
            left: deviceWidth * 0.08,
            right: deviceWidth * 0.08,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn\'t receive the code?',
                      style: GoogleFonts.poppins(
                          color: colorWhite, fontSize: deviceHeight * 0.016),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend it',
                        style: GoogleFonts.poppins(
                            color: colorYellow, fontSize: deviceHeight * 0.016),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomFillButton(
                      onPressed: () {
                        openScreenWithResult(context, const Login());
                      },
                      isColorBtn: false,
                      width: deviceWidth * .39,
                      height: deviceHeight * 0.07,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: colorWhite,
                            size: deviceHeight * 0.014,
                          ),
                          Text(
                            'Back',
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceHeight * 0.014),
                          ),
                        ],
                      ),
                    ),
                    CustomFillButton(
                      onPressed: onSubmit,
                      width: deviceWidth * .39,
                      height: deviceHeight * 0.07,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.check,
                            color: colorWhite,
                            size: deviceHeight * 0.014,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'CONFIRM',
                            style: GoogleFonts.poppins(
                                color: colorWhite,
                                fontSize: deviceHeight * 0.014),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
