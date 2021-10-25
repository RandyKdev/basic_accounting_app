import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: desaturatedGreyColor,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: desaturatedGreyColor,
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: desaturatedGreyColor,
        brightness: Brightness.light,
        elevation: 0,
        title: Text(
          'Dashboard',
          style: h6TextStyle.merge(TextStyle(
            color: primaryColor,
          )),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
              top: 13,
              bottom: 13,
            ),
            child: Container(
              color: lightGreyColor,
              width: 1,
            ),
          ),
          IconButton(
            onPressed: () {},
            color: primaryColor,
            icon: Image.asset('images/bell_icon.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 30,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                          color: lightWhiteColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          itemHeight: 50,
                          dropdownColor: whiteColor,
                          onChanged: (String? s) {},
                          style: labelBoldTextStyle
                              .merge(TextStyle(color: greyColor)),
                          value: 'Last 3 days',
                          icon: RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 7,
                              ),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                                color: greyColor,
                              ),
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('Last 3 days'),
                              value: 'Last 3 days',
                            ),
                            DropdownMenuItem(
                              child: Text('Last week'),
                              value: 'Last week',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        'XAF300,000',
                        style: h1TextStyle.merge(TextStyle(color: whiteColor)),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: lightWhiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_downward_sharp,
                                          color: greenColor,
                                          size: 20,
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Text(
                                            'Sales (XAF)',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: labelTextStyle.merge(
                                                TextStyle(
                                                    color: lightGreyColor)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '650,000',
                                      style: bodyBoldTextStyle
                                          .merge(TextStyle(color: whiteColor)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1,
                              color: lightGreyColor,
                              height: 50,
                              margin: EdgeInsets.only(
                                left: 10,
                                right: 20,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_downward_sharp,
                                          color: redColor,
                                          size: 20,
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Text(
                                            'Expenses (XAF)',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: labelTextStyle.merge(
                                                TextStyle(
                                                    color: lightGreyColor)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '350,000',
                                      style: bodyBoldTextStyle
                                          .merge(TextStyle(color: whiteColor)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: lightGreenColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('images/invoice_icon.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Invoice',
                            style: captionBoldTextStyle,
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Easily create and manage your invoice to help you track your incomes',
                            style: labelTextStyle
                                .merge(TextStyle(color: lightGreyColor)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: lightRedColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('images/expenses_icon.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Expenses',
                            style: captionBoldTextStyle,
                          ),
                          Text(
                            'Easily create and manage your invoice to help you track your incomes',
                            style: labelTextStyle
                                .merge(TextStyle(color: lightGreyColor)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: lightOrangeColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('images/items_icon.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Items',
                            style: captionBoldTextStyle,
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Easily create and manage your invoice to help you track your incomes',
                            style: labelTextStyle
                                .merge(TextStyle(color: lightGreyColor)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: lightPurpleColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('images/customer_icon.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Customer',
                            style: captionBoldTextStyle,
                          ),
                          SizedBox(height: 3),
                          SizedBox(height: 3),
                          Text(
                            'Easily create and manage your invoice to help you track your incomes',
                            style: labelTextStyle
                                .merge(TextStyle(color: lightGreyColor)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: desaturatedGreyColor,
            border: Border(
              top: BorderSide(
                color: veryLightGreyColor!,
                width: 2,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/home_active_icon.png',
                    fit: BoxFit.contain,
                    width: 18,
                    height: 20,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Dashboard',
                    style: labelTextStyle.merge(TextStyle(color: accentColor)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/sales_inactive_icon.png',
                    fit: BoxFit.contain,
                    width: 18,
                    height: 20,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Sales',
                    style:
                        labelTextStyle.merge(TextStyle(color: lightGreyColor)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/purchases_inactive_icon.png',
                    fit: BoxFit.contain,
                    width: 18,
                    height: 20,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Purchases',
                    style:
                        labelTextStyle.merge(TextStyle(color: lightGreyColor)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/more_inactive_icon.png',
                    fit: BoxFit.contain,
                    width: 18,
                    height: 20,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'More',
                    style:
                        labelTextStyle.merge(TextStyle(color: lightGreyColor)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
