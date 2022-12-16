import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  UserPageState createState() => UserPageState();
}

class UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("User Page"),
      ),
    );
  }
}
