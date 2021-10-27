import 'package:basic/constants/color_constants.dart';
import 'package:basic/screens/dashboard/dashboard_appbar.dart';
import 'package:basic/screens/dashboard/dashboard_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: desaturatedGreyColor,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: desaturatedGreyColor,
    ));

    return Scaffold(
      appBar: dashboardAppBar(),
      body: dashboardBody(context),
    );
  }
}
