import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/home/home.dart';
import 'package:stream_rate/screens/subscription/subscription_first.dart';
import 'package:stream_rate/screens/subscription/subscription_second.dart';
import 'package:stream_rate/screens/subscription/subscription_third.dart';
import 'package:stream_rate/screens/support/support.dart';

import '../constant/constant.dart';
import '../main.dart';

export '../constant/constant.dart';
export '../main.dart';
export 'shared_pref_utill.dart';

void openScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: curve);
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                    .animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
    // MaterialPageRoute(builder: (context) => screen),
  );
}

void openScreenWithReplacePrevious(BuildContext context, Widget screen) {
  Navigator.of(context).pushReplacement(
    // MaterialPageRoute(builder: (BuildContext context) => screen),
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: curve);
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                    .animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
  );
}

void openScreenWithClearPrevious(BuildContext context, Widget screen) {
  Navigator.of(context).pushAndRemoveUntil(
    // MaterialPageRoute(builder: (BuildContext context) => screen),
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: curve);
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                    .animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
    (route) => false,
  );
}

void openBottomModalSheet(BuildContext context, Widget screen) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    builder: (BuildContext context) {
      return screen;
    },
  );
}

Future openScreenWithResult(BuildContext context, Widget screen) async {
  return await Navigator.push(
    context,
    // MaterialPageRoute(builder: (context) => screen),
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: curve);
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                    .animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
  );
}

openSimpleSnackbar(String title, {duration = 3}) {
  if (rootScaffoldMessengerKey.currentState != null) {
    rootScaffoldMessengerKey.currentState?.clearSnackBars();
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: colorPrimary,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: colorBlack.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                fontSize: 11, fontWeight: FontWeight.normal, color: colorWhite),
          ),
        ),
        backgroundColor: Colors.transparent,
        duration: Duration(seconds: duration),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
    );
  }
}

openSubscriptionPage(BuildContext context) {
  final randomIndex = Random().nextInt(3);

  final screens = [
    const SubScriptionFirst(),
    const SubScriptionSecond(),
    const SubScriptionThird(),
  ];

  openScreenWithResult(context, screens[randomIndex]);
}

String generateRandomText(int length) {
  const characters =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  Random random = Random();

  return List.generate(
      length, (index) => characters[random.nextInt(characters.length)]).join();
}

openNotificationAllowDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(deviceWidth * 0.04)),
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.02,
                  vertical: deviceHeight * 0.02),
              height: deviceHeight * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(deviceWidth * 0.04),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/notification.png",
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.1,
                        imageFit: BoxFit.fill),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                      child: Text(
                          "StreamRate would like to send you notifications",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: deviceWidth * 0.04)),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
                      child: Text(
                          "To stay on top of latest updates and new offers, please allow StreamRate to send you notifications.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceWidth * 0.032)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              isColorBtn: false,
                              width: deviceWidth * 0.35,
                              child: Text("DON'T ALLOW",
                                  style: GoogleFonts.poppins(
                                      color: colorWhite,
                                      fontSize: deviceWidth * 0.03))),
                          CustomFillButton(
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: Text(
                                "ALLOW",
                                style: GoogleFonts.poppins(
                                    color: colorWhite,
                                    fontSize: deviceHeight * 0.018),
                              ))
                        ]),
                  ])),
        );
      });
}

openContactsAllowDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(deviceWidth * 0.04)),
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.02,
                  vertical: deviceHeight * 0.02),
              height: deviceHeight * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(deviceWidth * 0.04),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/contacts.png",
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.1,
                        imageFit: BoxFit.cover),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                      child: Text(
                          "StreamRate would like to access your contacts",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: deviceWidth * 0.04)),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
                      child: Text(
                          "Please allow StreamRate to sync your contacts to easily share content and invite people you know",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceWidth * 0.032)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              isColorBtn: false,
                              width: deviceWidth * 0.35,
                              child: Text("DON'T ALLOW",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: colorWhite,
                                      fontSize: deviceWidth * 0.03))),
                          CustomFillButton(
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: Text(
                                "ALLOW",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: colorWhite,
                                    fontSize: deviceHeight * 0.018),
                              ))
                        ]),
                  ])),
        );
      });
}

openReportDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.015,
                  vertical: deviceHeight * 0.05),
              height: deviceHeight * 0.5,
              width: deviceHeight * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(deviceWidth * 0.04),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/report.png",
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.1,
                        imageFit: BoxFit.cover),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.036),
                      child: Text("Thank you for using StreamRate!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.02)),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                      child: Text(
                          "We'll review the error, refund your credit, and keep improving. For questions, use the Help button bellow.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.014)),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.17),
                      child: Text(
                          "We'are 95% accurate and always aiming higher!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.014)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              onPressed: () => openScreenWithResult(
                                  context, const Support()),
                              isColorBtn: false,
                              width: deviceWidth * 0.3,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/svgs/help.svg"),
                                    const SizedBox(width: 10),
                                    Text("HELP",
                                        style: GoogleFonts.poppins(
                                            color: colorWhite,
                                            fontSize: deviceHeight * 0.02))
                                  ])),
                          CustomFillButton(
                              onPressed: () =>
                                  openScreenWithResult(context, const Home()),
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: Text(
                                "GO HOME",
                                style: GoogleFonts.poppins(
                                    color: colorWhite,
                                    fontSize: deviceHeight * 0.02),
                              ))
                        ]),
                  ])),
        );
      });
}

openNotFoundDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(deviceWidth * 0.04)),
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.02,
                  vertical: deviceHeight * 0.02),
              height: deviceHeight * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(deviceWidth * 0.04),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/not_found.png",
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.1,
                        imageFit: BoxFit.cover),
                    Text("Uh Oh! No results found!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: colorWhite, fontSize: deviceHeight * 0.02)),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.04),
                      child: Text(
                          "It looks like we couldn't find a result. Please make sure the camera is facing the TV screen and it fits inside the marks.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.014)),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.18),
                      child: Text("Please contact us if the problem persists.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.016)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              onPressed: () => openScreenWithResult(
                                  context, const Support()),
                              isColorBtn: false,
                              width: deviceWidth * 0.3,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/svgs/help.svg"),
                                    const SizedBox(width: 10),
                                    Text("HELP",
                                        style: GoogleFonts.poppins(
                                            color: colorWhite,
                                            fontSize: deviceHeight * 0.02))
                                  ])),
                          CustomFillButton(
                              onPressed: () =>
                                  openScreenWithResult(context, const Home()),
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: Text(
                                "GO HOME",
                                style: GoogleFonts.poppins(
                                    color: colorWhite,
                                    fontSize: deviceHeight * 0.02),
                              ))
                        ]),
                  ])),
        );
      });
}

openMessageDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(deviceWidth * 0.04)),
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.02,
                  vertical: deviceHeight * 0.02),
              height: deviceHeight * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(deviceWidth * 0.04),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadImageSimple(
                        image: "assets/images/message.png",
                        width: deviceWidth * 0.25,
                        height: deviceHeight * 0.15,
                        imageFit: BoxFit.fill),
                    Text("Thank you for reaching out!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: colorWhite, fontSize: deviceWidth * 0.04)),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 0.09),
                      child: Text(
                          "We've received your message and will respond to the email address you provided shortly ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.016)),
                    ),
                    CustomFillButton(
                        onPressed: () =>
                            openScreenWithResult(context, const Home()),
                        isColorBtn: true,
                        width: deviceWidth * 0.4,
                        child: Text(
                          "GO HOME",
                          style: GoogleFonts.poppins(
                              color: colorWhite, fontSize: deviceWidth * 0.035),
                        ))
                  ])),
        );
      });
}
