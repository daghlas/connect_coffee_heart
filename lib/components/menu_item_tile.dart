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
      color: Colors.grey[100],
      elevation: 0.0,
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
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: icon,
            color: Colors.grey,
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
