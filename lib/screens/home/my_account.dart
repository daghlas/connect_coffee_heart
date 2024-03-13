import 'package:connect_coffee/models/connect.dart';
import 'package:connect_coffee/screens/home/connect_list.dart';
import 'package:connect_coffee/screens/home/settings_form.dart';
import 'package:connect_coffee/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    // bottom sheet
    void showSettingsPannel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: const SettingsForm(),
            );
          });
    }

    return StreamProvider<List<ConnectCoffee>?>.value(
      value: DatabaseService().connects, // connect_coffee
      initialData: null,
      child: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          title: const Text('Accounts'),
          // centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                showSettingsPannel();
              },
              icon: const Icon(Icons.settings),
              label: const Text(''),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                elevation: 0.0,
              ),
            ),
          ],
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/coffee_bg.png'), fit: BoxFit.cover),
            ),
            child: const ConnectList()),
      ),
    );
  }
}
