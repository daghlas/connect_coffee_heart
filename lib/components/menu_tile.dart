import 'dart:ffi';

import 'package:connect_coffee/models/menu.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final Menu menu;
  void Function()? onPressed;
  final Widget icon;
  MenuTile({
    super.key,
    required this.menu,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      margin: const EdgeInsets.fromLTRB(13.0, 10.0, 13.0, 0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20.0),
        leading: const CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.brown,
          backgroundImage: AssetImage('assets/coffee_icon.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            menu.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'IBMPlexSans',
                letterSpacing: 1.0),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            menu.description,
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
