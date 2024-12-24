import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stream_rate/constant/constant.dart';
import 'package:stream_rate/screens/onboard/onboard.dart';
import 'package:device_preview/device_preview.dart';
import 'package:stream_rate/screens/splash/splash.dart';

late SharedPreferences sharedPrefs;
final navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
  // runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark));
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        useInheritedMediaQuery: true,
        theme: ThemeData(
          primaryColor: colorPrimary,
          colorScheme: ThemeData()
              .colorScheme
              .copyWith(primary: colorPrimary, secondary: colorPrimary),
          unselectedWidgetColor: colorPrimary,
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: colorPrimary,
          ),
          fontFamily: GoogleFonts.nunito().fontFamily,
          scaffoldBackgroundColor: colorWhite,
          appBarTheme: const AppBarTheme(
            centerTitle: false,
            titleSpacing: 0,
            color: colorWhite,
            elevation: 3,
            shadowColor: Color(0x33000000),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            iconTheme: IconThemeData(color: colorTextCommon),
          ),
        ),
        builder: (context, child) {
          deviceWidth = MediaQuery.of(context).size.width;
          deviceHeight = MediaQuery.of(context).size.height;
          deviceAverageSize = (deviceWidth + deviceHeight) / 2;
          textScaleFactorOf = MediaQuery.textScaleFactorOf(context);

          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: ScrollConfiguration(behavior: MyBehavior(), child: child!),
          );
        },
        debugShowCheckedModeBanner: false,
        home: const Splash(),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
