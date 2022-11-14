
import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../product/add_product.dart';
import '../store_config/config_screen.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  // BottomNavBar(this.activeIndex);
  const BottomNavBar({Key? key, required this.activeIndex}) : super(key: key);
  final int activeIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _currentIndex;

  @override
  Widget build(BuildContext context) {
    // return Obx(() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xfff5f5f5),
        currentIndex: widget.activeIndex,
        //currentIndex: controller.activeIndex.value,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Settings'),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;

              String activeState = _currentIndex.toString();
              switch (activeState) {
                case '0':
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                  break;
                case '1':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddProductScreen())); //Category Screen
                  break;
                case '2':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen())); //Cart screen
                  break;
                case '3':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              StoreConfigScreen())); //settings screen
              }
              // });

              // setState(() {
              //_currentIndex = index;
              // controller.activeIndex.value = index;

              // String activeState = controller.activeIndex.value.toString();
              // //String activeState = _currentIndex.toString();
              // switch (activeState) {
              //   case '0':
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => HomeScreen()));
              //     break;
              //   case '1':
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) =>
              //                 CategoryScreen())); // category screen
              //     break;
              //   case '2':
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => CartScreen())); // Cart screen
              //     break;
              //   case '3':
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => SettingScreen())); //settings screen
              // }
              // });
            },
          );
        });
  }
}

//class BottomNavBar {
//
//}
