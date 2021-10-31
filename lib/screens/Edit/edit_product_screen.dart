import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({Key? key}) : super(key: key);

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
            FittedBox(
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
            FittedBox(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      color: whiteColor!.withOpacity(.1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 17,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Edit',
                        style: labelBoldTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
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
                'Crepes pour Jim',
                style: h6TextStyle.merge(TextStyle(color: whiteColor)),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(60),
        ),
      ),
      body: Container(),
    );
  }
}
