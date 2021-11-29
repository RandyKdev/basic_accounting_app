import 'package:basic/Enums/button_size_enums.dart';
import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/edit/edit_service_screen.dart';
import 'package:basic/screens/new/new_service_screen.dart';
import 'package:basic/screens/upload/upload_product_screen.dart';
import 'package:basic/widgets/appbar_button_widget.dart';
import 'package:basic/widgets/button_widget.dart';
import 'package:basic/widgets/row_price_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

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
              size: ButtonSize.big,
              text: 'Return',
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
                'About us',
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
          child: Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed. Arcu non sodales neque sodales ut etiam sit amet nisl. Quis eleifend quam adipiscing vitae proin. Libero id faucibus nisl tincidunt eget nullam non nisi est. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Faucibus vitae aliquet nec ullamcorper.

Vel pharetra vel turpis nunc. Nam aliquam sem et tortor consequat. Libero enim sed faucibus turpis in eu mi bibendum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi. Consectetur adipiscing elit pellentesque habitant morbi tristique. Sed libero enim sed faucibus turpis. Aliquam vestibulum morbi blandit cursus. A diam maecenas sed enim ut sem. Nulla pharetra diam sit amet nisl suscipit. Non sodales.''',
            style: bodyTextStyle,
          ),
        ),
      ),
    );
  }
}
