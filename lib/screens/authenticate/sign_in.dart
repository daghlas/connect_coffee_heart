import 'package:connect_coffee/services/auth.dart';
import 'package:connect_coffee/shared/constants.dart';
import 'package:connect_coffee/shared/loading.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key, required this.toggleView});

  final Function toggleView;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // FormTextField Values
  late String email = '';
  late String password = '';
  late String error = '';

  final AuthService _auth = AuthService();
  final _formalKey = GlobalKey<FormState>();

  // spinkit
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Loading()
        : Scaffold(
            backgroundColor: Colors.brown[100],
            appBar: AppBar(
              backgroundColor: Colors.brown[400],
              foregroundColor: Colors.white,
              elevation: 0.0,
              title: const Text('Sign in to Connect Coffee'),
              actions: <Widget>[
                ElevatedButton.icon(
                  onPressed: () async {
                    if (kDebugMode) {
                      print('Register');
                    }
                    widget.toggleView();
                  },
                  icon: const Icon(Icons.person),
                  label: const Text('Register'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[400],
                    foregroundColor: Colors.black,
                    elevation: 0.0,
                  ),
                )
              ],
            ),
            body: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formalKey,
                child: Column(children: <Widget>[
                  const SizedBox(height: 20.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Email'),
                    validator: (val) => val!.isEmpty ? 'Enter email' : null,
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    decoration:
                        textInputDecoration.copyWith(hintText: 'Password'),
                    obscureText: true,
                    validator: (val) =>
                        val!.length < 6 ? 'Enter password' : null,
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
                        setState(() {
                          loading = true;
                        });
                        dynamic result = await _auth.signInWithEmailAndPassword(
                            email, password);
                        if (result == null) {
                          setState(() {
                            error = 'Sign in failed, WRONG CREDENTIALS';
                            loading = false;
                          });
                        }
                        print(email);
                        print(password);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.brown[400]),
                    child: const Text('Sign in'),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    error,
                    style: const TextStyle(color: Colors.red, fontSize: 14.0),
                  )
                ]),
              ),
            ),
          );
  }
}
