import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Catelog/catlog_screen.dart';
import 'package:flutter_service_provider_app/Screens/Home/home_screen.dart';
import 'package:flutter_service_provider_app/Screens/Manage/manage_screen.dart';
import 'package:flutter_service_provider_app/Screens/Orders/order_screen.dart';

import 'Screens/Message/message_screen.dart';
import 'Utils/color_constants.dart';
import 'Utils/images_constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() =>
      _DashboardScreenState();
}

class _DashboardScreenState
    extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions =
      <Widget>[
    HomeScreen(),
    OrdersScreen(fromCat: false),
    CatlogScreen(),
    ManageScren(),
    MessageScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: _widgetOptions
            .elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 28,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              size: 28,
            ),
            // icon: Image.asset(
            //     scale: 3.5,
            //     IconsView.orderedIcon),
            label: 'Orders',
          ),
          const BottomNavigationBarItem(
            // icon: Image.asset(
            //   IconsView.catalogIcon,
            //   scale: 4,
            // ),
            icon: Icon(
              Icons.grid_view,
              size: 28,
            ),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
                scale: 4, IconsView.manageIcon),
            label: 'Manage',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              size: 28,
            ),
            // icon: Image.asset(
            //     scale: 4, IconsView.messageIcon),
            label: 'Message',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: greyColor,
        selectedItemColor: blueColor,
        onTap: _onItemTapped,
      ),
    ));
  }
}
