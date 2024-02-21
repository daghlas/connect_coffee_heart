import 'package:connect_coffee/models/connect.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// connnect_coffee
class ConnectList extends StatefulWidget {
  const ConnectList({super.key});

  @override
  State<ConnectList> createState() => _ConnectListState();
}

class _ConnectListState extends State<ConnectList> {
  @override
  Widget build(BuildContext context) {
    final connects = Provider.of<List<ConnectCoffee>>(context);
    // print Connects from firebase
    for (var connect in connects) {
      // connect_coffee
      print(connect.name);
      print(connect.sugars);
      print(connect.strength);
    }

    return Container();
  }
}
