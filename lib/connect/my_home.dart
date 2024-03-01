import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: const Text('Connect Coffee'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (value) {
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Settings',
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8),
                      Text('Settings'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'My Account',
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8),
                      Text('My Account'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'Logout',
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Logout',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Image.asset(
                      'assets/connect.png',
                      scale: 2.0,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'WE BELIEVE IN VALUE OF CONNECTION',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                        letterSpacing: 3,
                        fontFamily: 'IBMPlexSans'),
                  ),
                ),
                const SizedBox(height: 30.0),
                const Center(
                  child: Text(
                    'MAKE LIFE BETTER',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: 'IBMPlexSans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Card(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  elevation: 0.0,
                  child: ListTile(
                    title: Text(
                      'Menu',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Click to view our menu offers and the pricing on the various cuisines.',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.coffee),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  elevation: 0.0,
                  child: ListTile(
                    title: Text(
                      'Online Shop',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Go to our shop and make purschases on our variety of products and produce.',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.shopping_basket)),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  elevation: 0.0,
                  child: ListTile(
                    title: Text(
                      'Cart',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Click to view the items in your cart and proceed with checkouts.',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: CircleAvatar(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.shopping_cart)),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  elevation: 0.0,
                  child: ListTile(
                    title: Text(
                      'Blog',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Click to catch up with our most recent blogs and connect with farmers, customers and people.',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.newspaper)),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  elevation: 0.0,
                  child: ListTile(
                    title: Text(
                      'Events',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Click to view the upcoming scheduled events on Connect Coffee calender.',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: CircleAvatar(
                          backgroundColor: Colors.indigo,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.movie)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset(
                    'assets/facebook_fb.png',
                    width: 27,
                    height: 27,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset(
                    'assets/instagram.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset(
                    'assets/twitter_x.png',
                    width: 27,
                    height: 27,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Image.asset(
                    'assets/youtube.png',
                    width: 27,
                    height: 27,
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
