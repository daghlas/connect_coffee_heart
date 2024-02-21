import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connect_coffee/screens/home/connect_list.dart';
import 'package:connect_coffee/services/auth.dart';
import 'package:connect_coffee/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot?>.value(
      value: DatabaseService().connects,
      initialData: null,
      child: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          foregroundColor: Colors.white,
          title: const Text('Connect Coffee'),
          elevation: 0.0,
          actions: <Widget>[
            ElevatedButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: const Icon(Icons.person),
              label: const Text('logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[400],
                foregroundColor: Colors.black,
                elevation: 0.0,
              ),
            )
          ],
        ),
        body: const ConnectList(),
      ),
    );
  }
}
