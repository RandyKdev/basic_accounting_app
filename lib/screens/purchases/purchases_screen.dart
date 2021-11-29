import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/new/new_customer_screen.dart';
import 'package:basic/screens/new/new_expense_item_screen.dart';
import 'package:basic/screens/new/new_expense_product_screen.dart';
import 'package:basic/screens/new/new_item_screen.dart';
import 'package:basic/screens/new/new_product_screen.dart';
import 'package:basic/screens/new/new_supplier_screen.dart';
import 'package:basic/screens/purchases/purchases_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PurchasesScreen extends StatefulWidget {
  const PurchasesScreen({Key? key}) : super(key: key);

  @override
  _PurchasesScreenState createState() => _PurchasesScreenState();
}

class _PurchasesScreenState extends State<PurchasesScreen>
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

  List<String> tabs = ['Expenses', 'Items', 'Suppliers'];

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
                      'Purchases',
                      style: h6TextStyle.merge(TextStyle(color: whiteColor)),
                    ),
                    Expanded(
                      child: Text(
                        'Spent (XAF): 300,000',
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
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
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
      body: purchasesBody(_tabController!),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext ctx) {
            if (_index == 0) return NewExpenseProductScreen();
            if (_index == 1) return NewExpenseItemScreen();
            return NewSupplierScreen();
          }));
        },
        child: Icon(
          Icons.add,
          semanticLabel: 'Add ' +
              tabs[_index].substring(0, tabs[_index].length - 1).toLowerCase(),
        ),
        tooltip: 'Add ' +
            tabs[_index].substring(0, tabs[_index].length - 1).toLowerCase(),
      ),
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
