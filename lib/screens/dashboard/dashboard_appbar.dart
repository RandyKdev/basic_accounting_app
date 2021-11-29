import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar dashboardAppBar() {
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.top,
    SystemUiOverlay.bottom,
  ]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryColor,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: desaturatedGreyColor,
  ));
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: desaturatedGreyColor,
    // // brightness: Brightness.dark,
    // systemOverlayStyle: SystemUiOverlayStyle(
    //   statusBarColor: desaturatedGreyColor,
    //   statusBarBrightness: Brightness.dark,
    //   systemNavigationBarIconBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.light,
    //   systemNavigationBarColor: desaturatedGreyColor,
    // ),
    elevation: 0,
    title: Text(
      'Dashboard',
      style: h6TextStyle.merge(TextStyle(
        color: primaryColor,
      )),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(
          right: 10,
          top: 13,
          bottom: 13,
        ),
        child: Container(
          color: lightGreyColor,
          width: 1,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 5),
        child: IconButton(
          onPressed: () {},
          color: primaryColor,
          icon: Image.asset('images/bell_icon.png'),
        ),
      ),
    ],
  );
}
