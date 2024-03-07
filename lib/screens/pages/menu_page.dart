import 'package:connect_coffee/components/menu_tile.dart';
import 'package:connect_coffee/models/connect_menu.dart';
import 'package:connect_coffee/models/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // add item to cart
  void addToCart(Menu menu) {
    Provider.of<ConnectMenu>(context, listen: false).addItemToCart(menu);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectMenu>(
      builder: (BuildContext context, ConnectMenu value, Widget? child) =>
          SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(13.0, 100.0, 13.0, 0.0),
          child: Column(
            children: [
              const Text(
                'Explore our Menu & order',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IBMPlexSans'),
              ),

              const SizedBox(height: 50.0),

              //list of menu items
              Expanded(
                child: ListView.builder(
                    itemCount: value.menuList.length,
                    itemBuilder: (context, index) {
                      // get individual menu item
                      Menu menuItem = value.menuList[index];

                      // return the tile for the item
                      return MenuTile(
                        menu: menuItem,
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          addToCart(menuItem);
                          _showToast(context);
                        },
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

// toast message
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to cart'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
