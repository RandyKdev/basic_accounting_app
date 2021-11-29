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

class EditBusinessAccountScreen extends StatelessWidget {
  const EditBusinessAccountScreen({Key? key}) : super(key: key);

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
              onTap: () {},
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
                'Edit business account',
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
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
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
                    hintText: 'Business name',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      style:
                          bodyTextStyle.merge(TextStyle(color: primaryColor)),
                      hint: Text(
                        'Activity',
                        style:
                            bodyTextStyle.merge(TextStyle(color: primaryColor)),
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
                          value: 'Cooking',
                          child: Text('Cooking'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                // height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 7,
                  minLines: 5,
                  decoration: InputDecoration(
                    hintText: 'About',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ButtonWidget(
                backgroundColor: accentColor!,
                loading: false,
                onTap: () {},
                size: ButtonSize.big,
                text: "Save",
                textColor: whiteColor!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
