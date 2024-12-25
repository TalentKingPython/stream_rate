import 'package:flutter/material.dart';
import 'dart:io';

import 'package:barcode/barcode.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/constant.dart';

import 'package:stream_rate/screens/captcha/captcha.dart';
import 'package:stream_rate/utils/utils.dart';

class Voucher extends StatefulWidget {
  const Voucher({Key? key}) : super(key: key);

  @override
  VoucherState createState() => VoucherState();
}

class VoucherState extends State<Voucher> {
  void buildBarcode(
    Barcode bc,
    String data, {
    String? filename,
    double? width,
    double? height,
    double? fontHeight,
  }) {
    /// Create the Barcode
    final svg = bc.toSvg(
      data,
      width: width ?? 200,
      height: height ?? 80,
      fontHeight: fontHeight,
    );

    // Save the image
    filename ??= bc.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();
    File('$filename.svg').writeAsStringSync(svg);
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
    final Barcode barcode = Barcode.upcA();
    final String svg = barcode.toSvg(
      '98765432109', // Your data
      width: deviceWidth * 0.9, // Width
      height: deviceHeight * 0.12, // Height
      drawText: true, // Include text under the barcode
    );

    return Scaffold(
      backgroundColor: colorMainBackground,
      body: Stack(
        children: [
          SingleChildScrollView(
            // Added SingleChildScrollView
            child: Padding(
              padding: EdgeInsets.only(
                  left: 30, right: 30, top: deviceHeight * 0.18),
              child: Column(
                children: [
                  LoadImageSimple(
                    image: 'assets/images/voucher_main.png',
                    width: deviceHeight * 0.1,
                    height: deviceHeight * 0.1,
                    imageFit: BoxFit.fill,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Redeem Voucher",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: deviceHeight * 0.030,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    child: Text(
                      "Enter the code below to redeem your free credits",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: colorWhite,
                        fontSize: deviceHeight * 0.024,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: deviceWidth * 0.8,
                    decoration: BoxDecoration(
                      color: colorWhite.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SvgPicture.string(
                      svg,
                      fit: BoxFit.contain,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.001,
                    width: deviceWidth * 0.7,
                    child: Container(color: white),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: deviceWidth * 0.8,
                    decoration: BoxDecoration(
                      color: colorWhite.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const CustomTextFormField(
                      labelText: 'Voucher Code',
                      prefixIcon: Icon(Icons.discount_outlined,
                          color: colorMainLightGray),
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.03,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 60),
                    child: CustomFillButton(
                      onPressed: () =>
                          openScreenWithResult(context, const Captcha()),
                      isColorBtn: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.check, color: colorWhite),
                          const SizedBox(width: 5),
                          Text(
                            'VALIDATE',
                            style: GoogleFonts.poppins(
                                color: colorWhite, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                  child:
                      Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
