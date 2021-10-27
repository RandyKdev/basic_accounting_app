import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IndividualAccountScreen extends StatelessWidget {
  const IndividualAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: primaryColor,
        title: FittedBox(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                  color: whiteColor!.withOpacity(.1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 17,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Return',
                    style: labelBoldTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          child: Container(
            margin: EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Individual account',
                style: h6TextStyle.merge(TextStyle(color: whiteColor)),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(60),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'First name',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Last name',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      style: bodyTextStyle.merge(TextStyle(color: greyColor)),
                      hint: Text(
                        'City',
                        style: bodyTextStyle
                            .merge(TextStyle(color: lightGreyColor)),
                      ),
                      onChanged: (String? t) {},
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
                            color: primaryColor,
                          ),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'Buea',
                          child: Text('Buea'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 0),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 20),
                clipBehavior: Clip.hardEdge,
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(accentColor),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext ctx) {
                      return MainScreen();
                    }));
                  },
                  child: Text(
                    'Continue',
                    style: bodyBoldTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
