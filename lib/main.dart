import 'package:flutter/material.dart';
// import 'package:snackapp/carousalSlider.dart/';
import 'package:snackapp/login.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Snack App",
      // home: CarouSlider(),
      home: Login(),
    );
  }
}
