import 'package:connect_coffee/models/connect.dart';
import 'package:connect_coffee/screens/home/connect_tile.dart';
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
    final connects = Provider.of<List<ConnectCoffee>?>(context);
    // print values from firebase
    // for (var connect in connects!) {
    //   connects.forEach((connect) {
    //     // connect_coffee
    //     print(connect.name);
    //     print(connect.sugars);
    //     print(connect.strength);
    //   });
    // }

    // show/display connects from firebase
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: connects?.length ?? 0, // Provide a default value for itemCount
      itemBuilder: (context, index) {
        return ConnectTile(connectCoffee: connects![index]);
      },
    );
  }
}
