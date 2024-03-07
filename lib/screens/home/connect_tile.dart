import 'package:flutter/material.dart';
import 'package:connect_coffee/models/connect.dart';

class ConnectTile extends StatelessWidget {
  const ConnectTile({super.key, required this.connectCoffee});

  final ConnectCoffee connectCoffee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.fromLTRB(13.0, 5.0, 13.0, 0),
        child: ListTile(
          contentPadding: const EdgeInsets.all(20.0),
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.brown[connectCoffee.strength],
            backgroundImage: const AssetImage('assets/coffee_icon.png'),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              connectCoffee.name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IBMPlexSans',
                  letterSpacing: 1.0),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Takes ${connectCoffee.sugars} sugar(s)',
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
