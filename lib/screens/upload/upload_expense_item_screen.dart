import 'package:basic/Enums/button_size_enums.dart';
import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UploadExpenseItemScreen extends StatelessWidget {
  const UploadExpenseItemScreen({Key? key}) : super(key: key);

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
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                  color: lightWhiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 17,
                  ),
                  SizedBox(width: 15),
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
                'Crepes au chocolat',
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
                        'Product',
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
                          value: 'Buea',
                          child: Text('Buea'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (int? t) {},
                  ),
                  Text(
                    'Automatically add to products in stock',
                    style: labelBoldTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 10),
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
                  // maxLength: 3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Crepes au chocolat',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: primaryColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
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
                        // maxLength: 3,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'XAF1,000',
                          hintStyle: bodyTextStyle
                              .merge(TextStyle(color: primaryColor)),
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 80,
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
                      // maxLength: 3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '20',
                        hintStyle:
                            bodyTextStyle.merge(TextStyle(color: primaryColor)),
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
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
                  // maxLength: 3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'XAF2,000',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: primaryColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
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
                  minLines: 5,
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle:
                        bodyTextStyle.merge(TextStyle(color: lightGreyColor)),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Container(
            padding: EdgeInsets.all(10),
            color: desaturatedGreyColor,
            child: ButtonWidget(
              backgroundColor: accentColor!,
              loading: false,
              onTap: () {},
              size: ButtonSize.big,
              text: 'Save',
              textColor: whiteColor!,
            )),
      ],
    );
  }
}