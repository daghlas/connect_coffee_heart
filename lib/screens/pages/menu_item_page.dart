import 'package:connect_coffee/components/menu_item_tile.dart';
import 'package:connect_coffee/models/connect_menu.dart';
import 'package:connect_coffee/models/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuItemPage extends StatefulWidget {
  final String name;
  const MenuItemPage({super.key, required this.name});

  @override
  State<MenuItemPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuItemPage> {
  // add item to cart
  // void addToCart(Menu menu) {
  //   Provider.of<ConnectMenu>(context, listen: false).addItemToCart(menu);
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ConnectMenu>(
      create: (BuildContext context) => ConnectMenu(),
      child: Consumer<ConnectMenu>(
        builder: (BuildContext context, ConnectMenu value, Widget? child) =>
            Scaffold(
          backgroundColor: Colors.grey[350],
          body: Stack(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.brown,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.shopping_cart),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IBMPlexSans'),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'add items to cart and order',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'IBMPlexSans'),
                        ),
                        const SizedBox(height: 25.0),

                        //list of menu items
                        Expanded(
                          child: ListView.builder(
                              itemCount: value.menuList.length,
                              itemBuilder: (context, index) {
                                // get individual menu item
                                MenuItems menuItems =
                                    value.espressoCoffeeList[index];

                                // return the tile for the item
                                return MenuItemTile(
                                  menuItems: menuItems,
                                  icon: const Icon(Icons.add),
                                  onPressed: () {
                                    //addToCart(menuItem);
                                    _showToast(context);
                                  },
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

// toast message
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      const SnackBar(
        content: Center(
            child: Text(
          'ADDED TO CART',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IBMPlexSans',
          ),
        )),
        backgroundColor: Colors.brown,
        // action: SnackBarAction(
        //     label: 'View Cart', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
