import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class StormPage extends StatefulWidget {
  const StormPage({super.key});

  @override
  StormPageState createState() => StormPageState();
}

class StormPageState extends State<StormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Storm Page"),
      ),
    );
  }
}
