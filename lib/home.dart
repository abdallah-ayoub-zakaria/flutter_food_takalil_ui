import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  void Function(int)? onTabChange;
  MyHomePage({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        activeColor: Colors.white,
        tabBackgroundColor: Colors.brown,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 22,
        tabs: [
          GButton(
            text: 'المشتريات',
            icon: Icons.home,
            textStyle: TextStyle(fontFamily: 'MyFonts', color: Colors.white),
          ),
          GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'سلة المشتريات',
              textStyle: TextStyle(fontFamily: 'MyFonts', color: Colors.white)),
        ]);
    ;
  }
}
