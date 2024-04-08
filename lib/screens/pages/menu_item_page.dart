import 'package:connect_coffee/components/menu_item_tile.dart';
import 'package:connect_coffee/models/connect_menu.dart';
import 'package:connect_coffee/models/menu.dart';
import 'package:connect_coffee/screens/home/menu_item_slide.dart';
import 'package:connect_coffee/screens/pages/bottom_nav/cart_page.dart';
import 'package:connect_coffee/screens/pages/bottom_nav/favourites_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuItemPage extends StatefulWidget {
  final String name;
  const MenuItemPage({super.key, required this.name});

  @override
  State<MenuItemPage> createState() => _MenuItemPageState();
}

class _MenuItemPageState extends State<MenuItemPage> {
  // add item to cart
  void addToCart(MenuItems menuItems) {
    Provider.of<ConnectMenu>(context, listen: false).addItemToCart(menuItems);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectMenu>(
      builder: (BuildContext context, ConnectMenu value, Widget? child) =>
          SafeArea(
        child: Scaffold(
          backgroundColor: Colors.brown[400],
          body: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/coffee_bg.png'),
                    fit: BoxFit.fill),
              ),
              // margin: const EdgeInsets.only(top: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 8.0),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FavouritesPage()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                          child: CircleAvatar(
                            radius: 23.0,
                            backgroundColor: Colors.brown,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.shopping_cart),
                          ),
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
                        // const SizedBox(height: 5.0),

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
                                  icon: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(6.0),
                                          bottomRight: Radius.circular(6.0),
                                          topRight: Radius.circular(6.0),
                                          bottomLeft: Radius.circular(6.0)),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    addToCart(menuItems);
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
