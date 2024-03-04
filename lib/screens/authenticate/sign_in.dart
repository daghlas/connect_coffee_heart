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
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontFamily: 'IBMPlexSans',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Welcome Back',
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
                              child: Column(children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]!))),
                                  child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Enter Email',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none)),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Enter Password',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none)),
                                )
                              ]),
                            ),
                            const SizedBox(height: 80.0),
                            GestureDetector(
                              onTap: () {
                                if (kDebugMode) {
                                  print('LOG IN PRESSED');
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
                                    'LOGIN',
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
                            const Text(
                              'Dont have an account?',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 40.0),
                            const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // backgroundColor: Colors.brown[100],
            // appBar: AppBar(
            //   backgroundColor: Colors.brown[400],
            //   foregroundColor: Colors.white,
            //   elevation: 0.0,
            //   title: const Text('Sign in to Connect Coffee'),
            //   actions: <Widget>[
            //     ElevatedButton.icon(
            //       onPressed: () async {
            //         if (kDebugMode) {
            //           print('Register');
            //         }
            //         widget.toggleView();
            //       },
            //       icon: const Icon(Icons.person),
            //       label: const Text('Register'),
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.brown[400],
            //         foregroundColor: Colors.black,
            //         elevation: 0.0,
            //       ),
            //     )
            //   ],
            // ),
            // body: Container(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            //   child: Form(
            //     key: _formalKey,
            //     child: Column(children: <Widget>[
            //       const SizedBox(height: 20.0),
            //       TextFormField(
            //         decoration: textInputDecoration.copyWith(hintText: 'Email'),
            //         validator: (val) => val!.isEmpty ? 'Enter email' : null,
            //         onChanged: (val) {
            //           setState(() {
            //             email = val;
            //           });
            //         },
            //       ),
            //       const SizedBox(height: 20.0),
            //       TextFormField(
            //         decoration:
            //             textInputDecoration.copyWith(hintText: 'Password'),
            //         obscureText: true,
            //         validator: (val) =>
            //             val!.length < 6 ? 'Enter password' : null,
            //         onChanged: (val) {
            //           setState(() {
            //             password = val;
            //           });
            //         },
            //       ),
            //       const SizedBox(height: 40.0),
            //       ElevatedButton(
            //         onPressed: () async {
            //           if (_formalKey.currentState!.validate()) {
            //             setState(() {
            //               loading = true;
            //             });
            //             dynamic result = await _auth.signInWithEmailAndPassword(
            //                 email, password);
            //             if (result == null) {
            //               setState(() {
            //                 error = 'Sign in failed, WRONG CREDENTIALS';
            //                 loading = false;
            //               });
            //             }
            //             print(email);
            //             print(password);
            //           }
            //         },
            //         style: ElevatedButton.styleFrom(
            //             foregroundColor: Colors.brown[400]),
            //         child: const Text('Sign in'),
            //       ),
            //       const SizedBox(height: 20.0),
            //       Text(
            //         error,
            //         style: const TextStyle(color: Colors.red, fontSize: 14.0),
            //       )
            //     ]),
            //   ),
            // ),
          );
  }
}
