import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: const Text('Connect Coffee'),
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
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'CONNECT WITH PEOPLE',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    'Make life Better',
                    style: TextStyle(fontSize: 17.0, color: Colors.black),
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    '@Connect Coffee',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.brown,
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
                      'Click to view the items in your cart and proceed with checkouts',
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
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 30,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Facebook',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/instagram.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Instagram',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/twitter_x.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Twitter',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/youtube.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'YouTube',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
