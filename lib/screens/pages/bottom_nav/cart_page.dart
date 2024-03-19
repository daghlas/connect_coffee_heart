import 'package:connect_coffee/components/menu_item_tile.dart';
import 'package:connect_coffee/models/connect_menu.dart';
import 'package:connect_coffee/models/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove item to cart
  void removeFromCart(MenuItems menuItems) {
    Provider.of<ConnectMenu>(context, listen: false)
        .removeItemFromCart(menuItems);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectMenu>(
      builder: (BuildContext context, ConnectMenu value, Widget? child) =>
          SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 80.0, 80.0, 0),
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('assets/connect.png'),
                  )),
            ),
            const SizedBox(height: 50.0),

            // list of menu items
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(34)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 5.0),
                        child: Text(
                          'Cart',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: value.userCart.length,
                          itemBuilder: (context, index) {
                            // get individual menu item
                            MenuItems menuItem = value.userCart[index];

                            // return the tile for the item
                            return MenuItemTile(
                              menuItems: menuItem,
                              onPressed: () {
                                removeFromCart(menuItem);
                                _showToast(context);
                              },
                              icon: const Icon(Icons.delete),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            )
          ],
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
          'REMOVED FROM CART',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IBMPlexSans',
          ),
        )),
        backgroundColor: Colors.black,
        // action: SnackBarAction(
        //     label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
