import 'package:connect_coffee/screens/pages/drawer/blog.dart';
import 'package:connect_coffee/screens/pages/drawer/contact_us.dart';
import 'package:connect_coffee/screens/pages/drawer/events.dart';
import 'package:connect_coffee/services/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final AuthService _auth = AuthService();
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
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.newspaper),
                title: const Text('Blog'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlogPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.movie),
                title: const Text('Events'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EventsPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: const Text('Contact Us'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUs()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'IBMPlexSans',
                  ),
                ),
                onTap: () async {
                  if (kDebugMode) {
                    print('On Tap: Logout');
                  }
                  _showToast(context);
                  await _auth.signOut();
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
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
          'Successfully logged Out',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IBMPlexSans',
          ),
        )),
        backgroundColor: Colors.brown,
        // action: SnackBarAction(
        //     label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
