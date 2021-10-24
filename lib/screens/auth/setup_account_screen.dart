import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/auth/business_account.dart';
import 'package:basic/screens/auth/individual_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SetupAccountScreen extends StatelessWidget {
  const SetupAccountScreen({Key? key}) : super(key: key);

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
                  "Let's setup your account",
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
                  "Choose the account type you will use below to get started",
                  textAlign: TextAlign.center,
                  style: bodyTextStyle.merge(
                    TextStyle(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return IndividualAccountScreen();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('./images/account_icon.png'),
                                decoration: BoxDecoration(
                                  color: lightPurpleColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  'Individual account',
                                  style: subtitleBoldTextStyle,
                                ),
                              ),
                              Text(
                                'Freelance, microentrepreneur, independent contractor etc...',
                                style: captionTextStyle.merge(
                                  TextStyle(
                                    color: lightGreyColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return BusinessAccountScreen();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child:
                                    Image.asset('./images/business_icon.png'),
                                decoration: BoxDecoration(
                                  color: lightOrangeColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  'Business account',
                                  style: subtitleBoldTextStyle,
                                ),
                              ),
                              Text(
                                'For micro businesses, small and medium sized businesses etc...',
                                style: captionTextStyle.merge(
                                  TextStyle(
                                    color: lightGreyColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        bottom: 14,
                      ),
                      child: Text(
                        'Language:',
                        style: bodyTextStyle,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        onChanged: (String? s) {},
                        icon: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            bottom: 5,
                          ),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                              color: accentColor,
                            ),
                          ),
                        ),
                        style:
                            bodyTextStyle.merge(TextStyle(color: accentColor)),
                        items: [
                          DropdownMenuItem(
                            child: Text('English'),
                            value: 'English',
                          ),
                          DropdownMenuItem(
                            child: Text('French'),
                            value: 'French',
                          ),
                        ],
                        value: 'English',
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
