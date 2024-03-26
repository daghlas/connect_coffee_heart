import 'package:connect_coffee/services/auth.dart';
import 'package:connect_coffee/shared/loading.dart';
import 'package:flutter/foundation.dart';
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

  // spinkit
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Loading()
        : Scaffold(
            backgroundColor: Colors.brown[100],
            resizeToAvoidBottomInset: false,
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.brown[500]!,
                Colors.brown[900]!,
                Colors.brown[400]!
              ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 80),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontFamily: 'IBMPlexSans',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Create an Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'IBMPlexSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 60.0),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(151, 54, 12, 0.603),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Form(
                                key: _formalKey,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]!))),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: 'Enter Email',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                        validator: (val) =>
                                            val!.isEmpty ? 'Enter email' : null,
                                        onChanged: (val) {
                                          setState(() {
                                            email = val;
                                          });
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: 'Create Password',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                        obscureText: true,
                                        validator: (val) => val!.length < 6
                                            ? 'Enter valid password'
                                            : null,
                                        onChanged: (val) {
                                          setState(() {
                                            password = val;
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            Text(
                              error,
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 14.0),
                            ),
                            const SizedBox(height: 50.0),
                            GestureDetector(
                              onTap: () async {
                                if (_formalKey.currentState!.validate()) {
                                  setState(() {
                                    loading = true;
                                  });
                                  dynamic result =
                                      await _auth.registerWithEmailAndPassword(
                                          email, password);
                                  if (result == null) {
                                    setState(() {
                                      error = 'ENTER VALID EMAIL/PASSWORD';
                                      loading = false;
                                    });
                                  }
                                  print(email);
                                  print(password);
                                }
                              },
                              child: Container(
                                height: 50.0,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 50.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.brown[600]),
                                child: const Center(
                                  child: Text(
                                    'REGISTER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBMPlexSans',
                                        letterSpacing: 2.0),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 60.0),
                            GestureDetector(
                              onTap: () async {
                                if (kDebugMode) {
                                  print('REGISTER BUTTON CLICKED');
                                }
                                widget.toggleView();
                              },
                              child: const Text(
                                'Already registered? Login',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // const SizedBox(height: 40.0),
                            // GestureDetector(
                            //   onTap: () {
                            //     if (kDebugMode) {
                            //       print('FORGOT PASS BUTTON');
                            //     }
                            //   },
                            //   child: const Text(
                            //     'Forgot Password?',
                            //     style: TextStyle(
                            //         color: Colors.grey,
                            //         fontSize: 18.0,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
