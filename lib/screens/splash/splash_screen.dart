import 'package:basic/constants/color_constants.dart';
import 'package:basic/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      backgroundColor: primaryColor,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext ctx) {
            return LoginScreen();
          }));
        },
        child: Container(
          child: Center(
            child: Image.asset(
              'images/basic_logo.jpeg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
