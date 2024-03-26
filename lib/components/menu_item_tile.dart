import 'package:connect_coffee/models/menu.dart';
import 'package:flutter/material.dart';

class MenuItemTile extends StatelessWidget {
  final MenuItems menuItems;
  void Function()? onPressed;
  final Widget icon;
  MenuItemTile({
    super.key,
    required this.menuItems,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10.0),
        leading: CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.brown,
          backgroundImage: AssetImage(menuItems.itemImage),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            menuItems.itemName,
            style: const TextStyle(
                fontSize: 13.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'IBMPlexSans',
                letterSpacing: 1.0),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            menuItems.itemPrice,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                _showToast(context);
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.brown, shape: BoxShape.circle),
              child: IconButton(
                icon: icon,
                color: Colors.white,
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      const SnackBar(
        content: Center(
          child: Text(
            'ADDED TO FAVOURITES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'IBMPlexSans',
            ),
          ),
        ),
        backgroundColor: Colors.black,
        // action: SnackBarAction(
        //     label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
