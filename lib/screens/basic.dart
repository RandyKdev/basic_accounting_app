import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:basic/screens/splash/splash_screen.dart';
import 'package:flutter/services.dart';

class Basic extends StatelessWidget {
  const Basic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: desaturatedGreyColor,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: desaturatedGreyColor,
    ));
    return MaterialApp(
      theme: ThemeData(
        accentColor: accentColor,
        backgroundColor: desaturatedGreyColor,
        textTheme: TextTheme(
          bodyText1: bodyTextStyle,
          bodyText2: bodyBoldTextStyle,
          caption: captionTextStyle,
          headline1: h1TextStyle,
          headline6: h6TextStyle,
          subtitle1: subtitleBoldTextStyle,
        ),
        fontFamily: 'DM Sans',
        primaryColor: primaryColor,
        scaffoldBackgroundColor: desaturatedGreyColor,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
