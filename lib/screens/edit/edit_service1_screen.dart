import 'package:basic/Enums/button_size_enums.dart';
import 'package:basic/classes/spacing_class.dart';
import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/edit/edit_service_screen.dart';
import 'package:basic/screens/upload/upload_product_screen.dart';
import 'package:basic/screens/upload/upload_service1_screen.dart';
import 'package:basic/widgets/appbar_button_widget.dart';
import 'package:basic/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditService1Screen extends StatelessWidget {
  const EditService1Screen({Key? key}) : super(key: key);

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarButtonWidget(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 17,
              ),
              isIconSameSize: false,
              onTap: () {
                Navigator.of(context).pop();
              },
              size: ButtonSize.small,
              text: 'Return',
            ),
            AppBarButtonWidget(
              icon: Image.asset('images/edit_icon.png'),
              isIconSameSize: true,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext ctx) {
                  return UploadService1Screen();
                }));
              },
              size: ButtonSize.small,
              text: 'Edit',
            ),
          ],
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
                'Web design',
                style: h6TextStyle.merge(TextStyle(color: whiteColor)),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(60),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  'Services',
                  style: bodyTextStyle,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  'Web design',
                  style: bodyTextStyle,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Text(
                  'Description',
                  style: bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Container(
            padding: EdgeInsets.all(10),
            color: desaturatedGreyColor,
            child: ButtonWidget(
              backgroundColor: lightRedColor!,
              loading: false,
              onTap: () {},
              size: ButtonSize.big,
              text: 'Delete service',
              textColor: redColor!,
            )),
      ],
    );
  }
}
