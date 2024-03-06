import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.brown,
            ),
            child: Center(
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Add your navigation logic here
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: const Text('Blog'),
            onTap: () {
              // Add your navigation logic here
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.movie),
            title: const Text('Events'),
            onTap: () {
              // Add your navigation logic here
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text('Contact Us'),
            onTap: () {
              // Add your navigation logic here
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
