import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UploadProductScreen extends StatelessWidget {
  const UploadProductScreen({Key? key}) : super(key: key);

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
                'Crepes pour Jim',
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
                        'Jim',
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            height: 60,
                            decoration: BoxDecoration(
                              color: whiteColor,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  style: bodyTextStyle
                                      .merge(TextStyle(color: primaryColor)),
                                  hint: Text(
                                    'Crepes',
                                    style: bodyTextStyle
                                        .merge(TextStyle(color: primaryColor)),
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
                        ),
                        SizedBox(width: 1),
                        Container(
                          width: 80,
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          height: 60,
                          decoration: BoxDecoration(
                            color: whiteColor,
                          ),
                          child: TextField(
                            // maxLength: 3,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '08',
                              hintStyle: bodyTextStyle
                                  .merge(TextStyle(color: primaryColor)),
                              contentPadding: EdgeInsets.symmetric(vertical: 8),
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'XAF20,000',
                          hintStyle: bodyTextStyle
                              .merge(TextStyle(color: lightGreyColor)),
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: lightAccentColor,
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Add a product',
                          textAlign: TextAlign.center,
                          style: bodyBoldTextStyle
                              .merge(TextStyle(color: accentColor)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: lightRedColor,
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 5,
                        ),
                        child: Text(
                          'Remove a product',
                          textAlign: TextAlign.center,
                          style: bodyBoldTextStyle
                              .merge(TextStyle(color: redColor)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Container(
          padding: EdgeInsets.all(10),
          color: desaturatedGreyColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal (XAF): ',
                    style: captionTextStyle
                        .merge(TextStyle(color: lightGreyColor)),
                  ),
                  Expanded(
                    child: Text(
                      '20,000',
                      textAlign: TextAlign.end,
                      style: captionTextStyle
                          .merge(TextStyle(color: lightGreyColor)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total (XAF): ', style: bodyBoldTextStyle),
                  Expanded(
                    child: Text('20,000',
                        textAlign: TextAlign.end, style: bodyBoldTextStyle),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: accentColor,
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style:
                        bodyBoldTextStyle.merge(TextStyle(color: whiteColor)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
