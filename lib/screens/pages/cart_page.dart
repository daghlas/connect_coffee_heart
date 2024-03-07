import 'package:connect_coffee/components/menu_tile.dart';
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
  void removeFromCart(Menu menu) {
    Provider.of<ConnectMenu>(context, listen: false).removeItemFromCart(menu);

    // toast message when user adds item to cart
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('removed from cart'),
      ),
    );
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
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      // get individual menu item
                      Menu menuItem = value.userCart[index];

                      // return the tile for the item
                      return MenuTile(
                        menu: menuItem,
                        onPressed: () => removeFromCart(menuItem),
                        icon: const Icon(Icons.delete),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
