import 'package:connect_coffee/models/user.dart';
import 'package:connect_coffee/services/database.dart';
import 'package:connect_coffee/shared/constants.dart';
import 'package:connect_coffee/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({super.key});

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  // create form
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  // form values
  // LateInitializationError: >> Change from using 'late' to '?' to check nullable
  String? _currentName;
  String? _currentSugars;
  int? _currentStrength;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FireUser?>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user?.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData? userData = snapshot.data;
            return Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  const Text(
                    'Update your brew preference settings',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    initialValue: userData?.name,
                    decoration: textInputDecoration,
                    validator: (val) =>
                        val!.isEmpty ? 'Please enter a name' : null,
                    onChanged: (val) => setState(() {
                      _currentName = val;
                    }),
                  ),
                  const SizedBox(height: 20.0),
                  // drop down
                  DropdownButtonFormField(
                    decoration: textInputDecoration,
                    value: _currentSugars ?? userData?.sugars,
                    items: sugars.map((sugar) {
                      return DropdownMenuItem(
                        value: sugar,
                        child: Text('$sugar sugar(s)'),
                      );
                    }).toList(),
                    onChanged: (val) => setState(() {
                      _currentSugars = val;
                    }),
                  ),
                  const SizedBox(height: 30.0),
                  // slider
                  const Text('Slide across to select brew strength'),
                  Slider(
                      min: 100.0,
                      max: 900.0,
                      divisions: 8,
                      value:
                          (_currentStrength ?? userData?.strength)!.toDouble(),
                      activeColor:
                          Colors.brown[_currentStrength ?? userData!.strength],
                      inactiveColor:
                          Colors.brown[_currentStrength ?? userData!.strength],
                      onChanged: (val) => setState(() {
                            _currentStrength = val.round();
                          })),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () async {
                      print(_currentName);
                      print(_currentSugars);
                      print(_currentStrength);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown[400],
                      foregroundColor: Colors.black,
                      elevation: 0.0,
                    ),
                    child: const Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Loading();
          }
        });
  }
}
