import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/sales/sales_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: _index,
    );
    _tabController!.addListener(() {
      setState(() {
        _index = _tabController!.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  List<String> tabs = ['Invoice', 'Items', 'Customers'];

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
        automaticallyImplyLeading: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: primaryColor,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: desaturatedGreyColor,
        ),
        brightness: Brightness.dark,
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
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TabBar(
                  isScrollable: false,
                  controller: _tabController,
                  indicator: UnderlineTabIndicator(),
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  tabs: tabs.map((String e) {
                    return genTab(e, tabs.indexOf(e) == _index);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      body: salesBody(_tabController!),
    );
  }

  Tab genTab(String text, bool active) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
          color: active ? primaryColor : whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(right: 5),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: labelTextStyle.merge(
              TextStyle(color: active ? whiteColor : primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
