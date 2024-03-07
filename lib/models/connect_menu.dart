import 'package:connect_coffee/models/menu.dart';
import 'package:flutter/material.dart';

class ConnectMenu extends ChangeNotifier {
  // menu list
  final List<Menu> _menuList = [
    // espresso coffee
    Menu(
        name: 'ESPRESSO COFFEE',
        description: 'Ristretto Double Shot',
        imagePath: 'assets/coffee_icon.png'),

    // brewing coffee
    Menu(
        name: 'BREWING COFFEE',
        description: 'The desrired aroma and taste',
        imagePath: 'assets/coffee_icon.png'),

    // cold brew coffee
    Menu(
        name: 'COLD BREW COFFEE',
        description: 'Romeo & Juliet Blends',
        imagePath: 'assets/coffee_icon.png'),

    // fresh juice & iced
    Menu(
        name: 'FRESH JUICE & ICED',
        description: 'Serve with fresh fruits',
        imagePath: 'assets/coffee_icon.png'),

    // // specially brewed tea
    // Menu(
    //     name: 'SPECIALLY BREWED TEA',
    //     description: 'The perfect cup of joy',
    //     imagePath: 'assets/coffee_icon.png'),

    // // pastry
    // Menu(
    //     name: 'PASTRY',
    //     description: 'Fresh, delicious and healthy',
    //     imagePath: 'assets/coffee_icon.png'),
  ];

  // user cart
  final List<Menu> _userCart = [];

  // get coffee list
  List<Menu> get menuList => _menuList;

  // get user cart
  List<Menu> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Menu menu) {
    _userCart.add(menu);
    notifyListeners();
  }

  // remove item from cart
  void removeItemToCart(Menu menu) {
    _userCart.remove(menu);
    notifyListeners();
  }
}
