import 'package:connect_coffee/models/user.dart';
import 'package:connect_coffee/screens/authenticate/authenticate.dart';
import 'package:connect_coffee/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FireUser?>(context);
    print(user);

    if (user == null) {
      return const Authenticate();
    } else {
      return Home();
    }
  }
}
