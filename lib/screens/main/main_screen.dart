import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/dashboard/dashboard_appbar.dart';
import 'package:basic/screens/dashboard/dashboard_body.dart';
import 'package:basic/screens/dashboard/dashboard_screen.dart';
import 'package:basic/screens/more/more_screen.dart';
import 'package:basic/screens/purchases/purchases_screen.dart';
import 'package:basic/screens/sales/sales_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // final List<Widget> _screens = [
  //   DashboardScreen(),
  //   SalesScreen(),
  //   dashboardAppBar(),
  //   dashboardAppBar(),
  // ];

  void setCurrentIndex(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      DashboardScreen(),
      SalesScreen(),
      PurchasesScreen(),
      MoreScreen(),
    ];
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: desaturatedGreyColor,
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        selectedItemColor: accentColor,
        selectedLabelStyle: labelTextStyle,
        unselectedLabelStyle: labelTextStyle,
        unselectedFontSize: 12,
        unselectedItemColor: greyColor,
        onTap: setCurrentIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            tooltip: 'Dashboard',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/home_active_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/home_inactive_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            tooltip: 'Sales',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/sales_active_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/sales_inactive_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            label: 'Sales',
          ),
          BottomNavigationBarItem(
            tooltip: 'Purchases',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/purchases_active_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/purchases_inactive_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            label: 'Purchases',
          ),
          BottomNavigationBarItem(
            tooltip: 'More',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/more_active_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'images/more_inactive_icon.png',
                fit: BoxFit.contain,
                width: 18,
                height: 20,
              ),
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
