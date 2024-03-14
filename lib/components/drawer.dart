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
      backgroundColor: Colors.brown,
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                // color: Colors.brown,
                ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown,
                    backgroundImage: AssetImage('assets/coffee_icon.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Daghlas Kenyatta',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        Text(
                          'daghlaskaire58@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: <Widget>[
                const SizedBox(height: 10.0),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10.0),
                ListTile(
                  leading: const Icon(
                    Icons.newspaper,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Blog',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogPage()));
                  },
                ),
                const SizedBox(height: 10.0),
                ListTile(
                  leading: const Icon(
                    Icons.movie,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Events',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventsPage()));
                  },
                ),
                const SizedBox(height: 10.0),
                ListTile(
                  leading: const Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Contact Us',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactUs()));
                  },
                ),
              ],
            ),
          ),
          // This will fill up any free-space
          const Spacer(),
          // Everything from here down is bottom aligned in the drawer
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.red,
                size: 32.0,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
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
