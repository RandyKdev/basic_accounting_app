import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar dashboardAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: desaturatedGreyColor,
    brightness: Brightness.dark,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: desaturatedGreyColor,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: desaturatedGreyColor,
    ),
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
