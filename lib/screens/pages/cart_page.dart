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
            const Padding(
              padding: EdgeInsets.fromLTRB(13.0, 80.0, 13.0, 0.0),
              child: Text(
                'Cart',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IBMPlexSans'),
              ),
            ),

            const SizedBox(height: 50.0),

            // list of menu items
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                ),
                child: ListView.builder(
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
