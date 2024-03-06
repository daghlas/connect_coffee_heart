import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.brown[700]!,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: const [
            GButton(
              icon: Icons.coffee,
              text: ' Menu',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: ' Shop',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: ' Cart',
            ),
          ]),
    );
  }
}
