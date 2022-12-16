import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key});

  @override
  QuotesPageState createState() => QuotesPageState();
}

class QuotesPageState extends State<QuotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Quotes Page"),
      ),
    );
  }
}
