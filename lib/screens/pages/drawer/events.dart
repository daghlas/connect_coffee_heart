import 'package:flutter/material.dart';

class ConnectEvents extends StatefulWidget {
  const ConnectEvents({super.key});

  @override
  State<ConnectEvents> createState() => _ConnectEventsState();
}

class _ConnectEventsState extends State<ConnectEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: const Text('Events'),
      ),
      body: Container(
          color: Colors.grey[350],
          child: const Center(
              child: Text(
            'EVENTS PAGE',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'IBMPlexSans',
            ),
          ))),
    );;
  }
}