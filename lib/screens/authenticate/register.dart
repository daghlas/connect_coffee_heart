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

  final AuthService _auth = AuthService();

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
          child: Column(children: <Widget>[
            const SizedBox(height: 20.0),
            TextFormField(
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              },
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () async {
                // dynamic result = await _auth.signInAnon();
                // if (result == null) {
                //   print('Sign in failed');
                // } else {
                //   print('Sign in succeeded');
                //   print(result.uid);
                // }
                print(email);
                print(password);
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
