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
        margin: const EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[connectCoffee.strength],
          ),
          title: Text(connectCoffee.name),
          subtitle: Text('Takes ${connectCoffee.sugars} sugar(s)'),
        ),
      ),
    );
  }
}
