import 'package:connect_coffee/components/bottom_nav.dart';
import 'package:connect_coffee/components/drawer.dart';
import 'package:connect_coffee/screens/home/my_account.dart';
import 'package:connect_coffee/screens/pages/bottom_nav/cart_page.dart';
import 'package:connect_coffee/screens/pages/bottom_nav/menu_page.dart';
import 'package:connect_coffee/screens/pages/bottom_nav/favourites_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // final AuthService _auth = AuthService();

  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //bottom bar pages
  final List<Widget> _pages = [
    // const HomePage(), // HOME
    const MenuPage(), // MENU
    const FavouritesPage(), // SHOP
    const CartPage(), // CART
  ];

  // nav drawer
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.brown,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: Stack(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  _globalKey.currentState?.openDrawer();
                },
              ),
              IconButton(
                icon: const Icon(Icons.person),
                color: Colors.white,
                onPressed: () {
                  if (kDebugMode) {
                    print('CLICKED: My Account Button');
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyAccount()),
                  );
                },
              ),
            ],
          ),
        ),
        _pages[_selectedIndex],
      ]),
      drawer: const MyDrawer(),
    );
  }
}
