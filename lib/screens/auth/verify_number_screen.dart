import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).padding.top,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 40,
                ),
                child: Text(
                  'Verify your mobile number',
                  textAlign: TextAlign.center,
                  style: h1TextStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 40,
                ),
                child: Text(
                  "Enter the code received by SMS below to verify your phone number",
                  textAlign: TextAlign.center,
                  style: bodyTextStyle.merge(
                    TextStyle(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                height: 70,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter code...',
                    hintStyle: bodyTextStyle,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive any code?",
                      style: labelBoldTextStyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend code',
                        style: labelBoldTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
