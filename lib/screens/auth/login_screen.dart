import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        'Enter your mobile number',
                        textAlign: TextAlign.center,
                        style: h1TextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        "We'll send you a verification code.\nMessage and data charges may apply",
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
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                      height: 70,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'icons/flags/png/cm.png',
                            package: 'country_icons',
                            width: 20,
                          ),
                          Container(
                            color: greyColor,
                            width: 1,
                            height: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: '+273 650185727',
                                hintStyle: bodyTextStyle,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(accentColor),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Continue',
                          style: bodyBoldTextStyle,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (int? t) {},
                        ),
                        Text(
                          'Accept our terms and services.',
                          style: labelBoldTextStyle,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Read more here.',
                        style: labelBoldTextStyle.merge(
                          TextStyle(color: accentColor),
                        ),
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
