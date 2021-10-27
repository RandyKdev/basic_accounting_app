import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar salesAppBar() {
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.top,
    SystemUiOverlay.bottom,
  ]);

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: primaryColor,
  //   statusBarBrightness: Brightness.dark,
  //   systemNavigationBarIconBrightness: Brightness.dark,
  //   statusBarIconBrightness: Brightness.light,
  //   systemNavigationBarColor: desaturatedGreyColor,
  // ));

  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: desaturatedGreyColor,
    ),
    backgroundColor: primaryColor,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sales',
                  style: h6TextStyle.merge(TextStyle(color: whiteColor)),
                ),
                Expanded(
                  child: Text(
                    'Income (XAF): 300,000',
                    textAlign: TextAlign.right,
                    style: captionBoldTextStyle
                        .merge(TextStyle(color: lightGreyColor)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            padding: EdgeInsets.all(5),
            height: 50,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: TabBar(
              // controller: _tabController,
              indicator: UnderlineTabIndicator(),
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(right: 5),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Invoice',
                        textAlign: TextAlign.center,
                        style:
                            labelTextStyle.merge(TextStyle(color: whiteColor)),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(right: 5),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Items',
                        textAlign: TextAlign.center,
                        style:
                            labelTextStyle.merge(TextStyle(color: whiteColor)),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Customers',
                        textAlign: TextAlign.center,
                        style:
                            labelTextStyle.merge(TextStyle(color: whiteColor)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
