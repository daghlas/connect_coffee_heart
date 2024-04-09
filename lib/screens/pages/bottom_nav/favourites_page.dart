import 'package:connect_coffee/components/favourite_tile.dart';
import 'package:connect_coffee/components/menu_item_tile.dart';
import 'package:connect_coffee/models/connect_menu.dart';
import 'package:connect_coffee/models/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  // remove item to cart
  void removeFromFavourites(MenuItems menuItems) {
    Provider.of<ConnectMenu>(context, listen: false)
        .removeItemFromFavourites(menuItems);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectMenu>(
      builder: (BuildContext context, ConnectMenu value, Widget? child) =>
          SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(80.0, 25.0, 80.0, 0),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'FAVOURITES',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    // fontFamily: 'IBMPlexSans',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15.0),

            //list of menu items
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(34.0)),
                ),

                // CONTENT GOES HERE
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 5.0),
                      child: Text(
                        'Your preferences - Favourites',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.userFavourites.length,
                        itemBuilder: (context, index) {
                          // get individual menu item
                          MenuItems menuItem = value.userFavourites[index];

                          // return the tile for the item
                          return FavItemTile(
                            menuItems: menuItem,
                            onPressed: () {
                              removeFromFavourites(menuItem);
                              _showToast(context);
                            },
                            icon: const Icon(Icons.delete),
                          );
                        }),
                  ],
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
          'REMOVED FROM FAVOURITES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IBMPlexSans',
          ),
        )),
        backgroundColor: Colors.red,
        // action: SnackBarAction(
        //     label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
