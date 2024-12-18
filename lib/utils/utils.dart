import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
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
