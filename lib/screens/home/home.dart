import 'package:connect_coffee/screens/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
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
    );
  }
}
