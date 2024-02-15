import 'package:connect_coffee/screens/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
        title: const Text('Sign in to Connect Coffee'),
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
              child: const Text('Sign in'),
            ),
          ]),
        ),
      ),
    );
  }
}
