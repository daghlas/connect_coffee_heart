import 'package:connect_coffee/screens/pages/drawer/contact_us.dart';
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.brown,
                      backgroundImage: AssetImage('assets/coffee_icon.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Daghlas Kenyatta',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUs()));
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: const Text(
                  'L0GOUT',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IBMPlexSans',
                  ),
                ),
                onTap: () {
                  // Add your navigation logic here
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
