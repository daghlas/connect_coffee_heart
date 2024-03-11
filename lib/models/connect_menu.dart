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

  // Espresso Coffee MenuItems
  final List<MenuItems> _espressoCoffeeList = [
    // Espresso / Espresso Macchiato
    MenuItems(
        itemName: 'Espresso / Espresso Macchiato',
        itemPrice: 'HOT 250',
        itemImage: 'assets/coffee_icon.png'),

    // Café Latte / Cappuccino
    MenuItems(
        itemName: 'Café Latte / Cappuccino',
        itemPrice: 'HOT 320 | ICED 350',
        itemImage: 'assets/coffee_icon.png'),

    // Café Mocha
    MenuItems(
        itemName: 'Café Mocha',
        itemPrice: 'HOT 370 | ICED 400',
        itemImage: 'assets/coffee_icon.png'),

    // Caramel Macchiato
    MenuItems(
        itemName: 'Caramel Macchiato',
        itemPrice: 'HOT 400 | ICED 450',
        itemImage: 'assets/coffee_icon.png'),

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
  final List<MenuItems> _userCart = [];

  // get coffee list
  List<Menu> get menuList => _menuList;

  // get menuItems list
  List<MenuItems> get espressoCoffeeList => _espressoCoffeeList;

  // get user cart
  List<MenuItems> get userCart => _userCart;

  // add item to cart
  void addItemToCart(MenuItems menuItems) {
    _userCart.add(menuItems);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(MenuItems menuItems) {
    _userCart.remove(menuItems);
    notifyListeners();
  }
}
