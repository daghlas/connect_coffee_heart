import 'package:connect_coffee/screens/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key, required this.toggleView});

  final Function toggleView;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // FormTextField Values
  late String email = '';
  late String password = '';
  late String error = '';

  final AuthService _auth = AuthService();
  final _formalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        foregroundColor: Colors.white,
        elevation: 0.0,
        title: const Text('Register to Connect Coffee'),
        actions: <Widget>[
          ElevatedButton.icon(
            onPressed: () async {
              print('Sign In');
              widget.toggleView();
            },
            icon: const Icon(Icons.person),
            label: const Text('Sign In'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown[400],
              foregroundColor: Colors.black,
              elevation: 0.0,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formalKey,
          child: Column(children: <Widget>[
            const SizedBox(height: 20.0),
            TextFormField(
              validator: (val) => val!.isEmpty ? 'Enter email' : null,
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              validator: (val) =>
                  val!.length < 6 ? 'Enter longer password' : null,
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              },
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () async {
                if (_formalKey.currentState!.validate()) {
                  dynamic result =
                      await _auth.registerWithEmailAndPassword(email, password);
                  if (result == null) {
                    setState(() {
                      error = 'required field cannot be blank';
                    });
                  }
                  print(email);
                  print(password);
                }
              },
              style:
                  ElevatedButton.styleFrom(foregroundColor: Colors.brown[400]),
              child: const Text('Register'),
            ),
          ]),
        ),
      ),
    );
  }
}
