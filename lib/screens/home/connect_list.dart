import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    final connects = Provider.of<QuerySnapshot>(context);
    // print Connects from firebase
    for (var doc in connects.docs) {
      print(doc.data);
    }

    return Container();
  }
}
