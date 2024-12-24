import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/screens/home/home.dart';

import 'package:stream_rate/utils/utils.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';

class Thanks extends StatefulWidget {
  const Thanks({Key? key}) : super(key: key);

  @override
  ThanksState createState() => ThanksState();
}

class ThanksState extends State<Thanks> {
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
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: colorPrimary,
            image: DecorationImage(
                image: AssetImage(AppImageAsset.splashBG), fit: BoxFit.cover),
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                      image: 'assets/images/sub3-logo.png',
                      width: deviceWidth * 0.4,
                    ),
                    SizedBox(height: deviceHeight * 0.1),
                    Container(
                      padding: EdgeInsets.all(deviceWidth * 0.06),
                      width: deviceWidth * 0.9,
                      height: deviceHeight * 0.4,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: LoadImageSimple(
                                image: "assets/images/thanks_main.png",
                                width: deviceWidth * 0.5),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Container(
                                  child: Text(
                                      "Thank you for subscribing for StreamRate Premium",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontSize: deviceHeight * 0.02))),
                            ),
                          ),
                          Expanded(
                            child: CustomFillButton(
                              onPressed: () =>
                                  openScreenWithResult(context, const Home()),
                              width: deviceWidth * 0.45,
                              isColorBtn: true,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("GO BACK HOME",
                                      style: GoogleFonts.poppins(
                                          fontSize: deviceHeight * 0.018,
                                          color: colorWhite)),
                                  const SizedBox(width: 2),
                                  Icon(Icons.chevron_right,
                                      size: deviceHeight * 0.018,
                                      color: colorWhite)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
          ]),
        ));
  }
}
