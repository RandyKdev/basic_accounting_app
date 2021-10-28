import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'More',
          style: h6TextStyle.merge(TextStyle(color: whiteColor)),
        ),
        backgroundColor: primaryColor,
        brightness: Brightness.dark,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'Account',
                        style: subtitleBoldTextStyle,
                      ),
                    ),
                    Divider(height: 0),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'Personal account',
                        style: bodyTextStyle,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    Divider(height: 0),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'Business account',
                        style: bodyTextStyle,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'Settings',
                        style: subtitleBoldTextStyle,
                      ),
                    ),
                    Divider(height: 0),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'About',
                        style: bodyTextStyle,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    Divider(height: 0),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'Language',
                        style: bodyTextStyle,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                    Divider(height: 0),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      title: Text(
                        'Whatsapp support',
                        style: bodyTextStyle,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: lightRedColor,
                ),
                width: double.infinity,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Log out',
                  textAlign: TextAlign.center,
                  style: bodyBoldTextStyle.merge(TextStyle(color: redColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
