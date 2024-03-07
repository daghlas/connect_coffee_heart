import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(13.0, 100.0, 13.0, 0.0),
      child: const Column(
        children: [
          Text(
            'Explore our Menu & order',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'IBMPlexSans'),
          ),
          Card(
            color: Colors.white,
            elevation: 0.0,
            margin: EdgeInsets.fromLTRB(13.0, 25.0, 13.0, 0),
            child: ListTile(
              contentPadding: EdgeInsets.all(20.0),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.brown,
                backgroundImage: AssetImage('assets/coffee_icon.png'),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'ESPRESSO COFFEE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBMPlexSans',
                      letterSpacing: 1.0),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Ristretto Double Shot',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0.0,
            margin: EdgeInsets.fromLTRB(13.0, 10.0, 13.0, 0),
            child: ListTile(
              contentPadding: EdgeInsets.all(20.0),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.brown,
                backgroundImage: AssetImage('assets/coffee_icon.png'),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'BREWING COFFEE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBMPlexSans',
                      letterSpacing: 1.0),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'The desrired aroma and taste',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0.0,
            margin: EdgeInsets.fromLTRB(13.0, 10.0, 13.0, 0),
            child: ListTile(
              contentPadding: EdgeInsets.all(20.0),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.brown,
                backgroundImage: AssetImage('assets/coffee_icon.png'),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'COLD BREW COFFEE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBMPlexSans',
                      letterSpacing: 1.0),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Romeo & Juliet Blends',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0.0,
            margin: EdgeInsets.fromLTRB(13.0, 10.0, 13.0, 0),
            child: ListTile(
              contentPadding: EdgeInsets.all(20.0),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.brown,
                backgroundImage: AssetImage('assets/coffee_icon.png'),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'FRESH JUICE & ICED',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBMPlexSans',
                      letterSpacing: 1.0),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Serve with fresh fruits',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // const Center(
    //   child: Text(
    //     'MENU',
    //     style: TextStyle(
    //         fontSize: 20.0,
    //         color: Colors.black,
    //         fontWeight: FontWeight.bold,
    //         fontFamily: 'IBMPlexSans',
    //         letterSpacing: 2.0),
    //   ),
    // );
  }
}
