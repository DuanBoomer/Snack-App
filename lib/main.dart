import 'package:flutter/material.dart';
import 'package:snackapp/HomePages/HomeArea.dart';
import 'package:snackapp/UserFunnelPages/welcome.dart';
import 'package:snackapp/UserFunnelPages/CreateAccount.dart';
import 'package:snackapp/UserFunnelPages/ForgotPassword.dart';
import 'package:snackapp/UserFunnelPages/LoginAccount.dart';
import 'package:snackapp/UserFunnelPages/ResetPassword.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Snack App",
      // home: Welcome(),
      home: Home(),
    );
  }
}
