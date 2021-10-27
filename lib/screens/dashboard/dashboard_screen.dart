import 'package:basic/screens/dashboard/dashboard_appbar.dart';
import 'package:basic/screens/dashboard/dashboard_body.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dashboardAppBar(),
      body: dashboardBody(context),
    );
  }
}
