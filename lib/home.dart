import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final double navBarRadius = 50;
  final Color navBarColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
              color: navBarColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(navBarRadius),
                  topRight: Radius.circular(navBarRadius))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GNav(
              backgroundColor: navBarColor,
              textStyle: TextStyle(color: Colors.white),
              color: Colors.white,
              // gap: 10,
              activeColor: Colors.white,
              tabBackgroundGradient: LinearGradient(colors: [
                Colors.grey.shade600,
                Colors.grey.shade800,
                Colors.grey.shade900
              ]),
              tabs: [
                GButton(
                  icon: Icons.home,
                  onPressed: () {},
                  // text: "Home",
                ),
                GButton(
                  icon: Icons.favorite,
                  // text: "Fav",
                ),
                GButton(icon: Icons.add),
                GButton(
                  icon: Icons.search,
                  // text: "Search",
                ),
                GButton(
                  icon: Icons.settings,
                  // text: "Setting",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
