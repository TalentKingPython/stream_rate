import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/custom_text_form.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/screens/subscription/subscription_first.dart';
import 'package:stream_rate/screens/subscription/subscription_second.dart';
import 'package:stream_rate/screens/subscription/subscription_third.dart';

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
            style: const TextStyle(
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

openNotificationAllowDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              height: deviceHeight * 0.5,
              width: deviceWidth * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/notification.png",
                        width: 100,
                        height: 100,
                        imageFit: BoxFit.cover),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                          "StreamRate would like to send you notifications",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 24)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text(
                          "To stay on top of latest updates and new offers, please allow StreamRate to send you notifications.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 16)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              isColorBtn: false,
                              width: deviceWidth * 0.3,
                              child: const Text("DON'T ALLOW",
                                  style: TextStyle(
                                      color: colorWhite, fontSize: 16))),
                          CustomFillButton(
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: const Text(
                                "ALLOW",
                                style:
                                    TextStyle(color: colorWhite, fontSize: 16),
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              height: deviceHeight * 0.5,
              width: deviceWidth * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/contacts.png",
                        width: 100,
                        height: 100,
                        imageFit: BoxFit.cover),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                          "StreamRate would like to access your contacts",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 24)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                          "Please allow StreamRate to sync your contacts to easily share content and invite people you know",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 18)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              isColorBtn: false,
                              width: deviceWidth * 0.3,
                              child: const Text("DON'T ALLOW",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: colorWhite, fontSize: 16))),
                          CustomFillButton(
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: const Text(
                                "ALLOW",
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(color: colorWhite, fontSize: 16),
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              height: deviceHeight * 0.5,
              width: deviceHeight * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/report.png",
                        width: 100,
                        height: 100,
                        imageFit: BoxFit.cover),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Thank you for using StreamRate!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 24)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                          "We'll review the error, refund your credit, and keep improving. For questions, use the Help button bellow.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 18)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text(
                          "We'are 95% accurate and always aiming higher!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 18)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              isColorBtn: false,
                              width: deviceWidth * 0.3,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/svgs/help.svg"),
                                    const SizedBox(width: 10),
                                    const Text("HELP",
                                        style: TextStyle(
                                            color: colorWhite, fontSize: 20))
                                  ])),
                          CustomFillButton(
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: const Text(
                                "GO HOME",
                                style:
                                    TextStyle(color: colorWhite, fontSize: 20),
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              height: deviceHeight * 0.5,
              width: deviceWidth * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/not_found.png",
                        width: 100,
                        height: 100,
                        imageFit: BoxFit.cover),
                    const Text("Uh Oh! No results found!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: colorWhite, fontSize: 24)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                          "It looks like we couldn't find a result. Please make sure the camera is facing the TV screen and it fits inside the marks.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 16)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: const Text(
                          "Please contact us if the problem persists.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 16)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFillButton(
                              isColorBtn: false,
                              width: deviceWidth * 0.3,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/svgs/help.svg"),
                                    const SizedBox(width: 10),
                                    const Text("HELP",
                                        style: TextStyle(
                                            color: colorWhite, fontSize: 20))
                                  ])),
                          CustomFillButton(
                              isColorBtn: true,
                              width: deviceWidth * 0.3,
                              child: const Text(
                                "GO HOME",
                                style:
                                    TextStyle(color: colorWhite, fontSize: 20),
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              height: deviceHeight * 0.5,
              width: deviceHeight * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorMainBackground),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoadImageSimple(
                        image: "assets/images/message.png",
                        width: 100,
                        height: 100,
                        imageFit: BoxFit.cover),
                    const Text("Thank you for reaching out!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: colorWhite, fontSize: 24)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                          "We've received your message and will respond to the email address you provided shortly ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: colorWhite, fontSize: 18)),
                    ),
                    CustomFillButton(
                        isColorBtn: true,
                        width: deviceWidth * 0.3,
                        child: const Text(
                          "GO HOME",
                          style: TextStyle(color: colorWhite, fontSize: 20),
                        ))
                  ])),
        );
      });
}
