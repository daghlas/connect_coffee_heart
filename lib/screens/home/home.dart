import 'package:connect_coffee/connect/my_home.dart';
import 'package:connect_coffee/models/connect.dart';
import 'package:connect_coffee/screens/home/connect_list.dart';
import 'package:connect_coffee/screens/home/settings_form.dart';
import 'package:connect_coffee/services/auth.dart';
import 'package:connect_coffee/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _auth = AuthService();

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
            ),
            ElevatedButton.icon(
              onPressed: () {
                showSettingsPannel();
              },
              icon: const Icon(Icons.settings),
              label: const Text('Settings'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[400],
                foregroundColor: Colors.black,
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
            child: Column(
              children: [
                const ConnectList(),
                const SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHome()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      elevation: 0.0,
                    ),
                    child: const Text('Go to Home'))
              ],
            )),
      ),
    );
  }
}
