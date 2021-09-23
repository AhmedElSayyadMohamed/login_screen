import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softagi_challenge_1/modules/login_screen/login_screen.dart';
import 'package:softagi_challenge_1/modules/sign_up_screen/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login_screen(),
    );
  }
}
