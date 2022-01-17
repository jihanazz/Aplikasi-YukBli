import 'package:aplikasi_yukbli/constant.dart';
import 'package:aplikasi_yukbli/users/accountpage.dart';
import 'package:aplikasi_yukbli/users/cartpage.dart';
import 'package:aplikasi_yukbli/users/homepage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new HomePage(),
    new CartPage(),
    new AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Homepage",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
