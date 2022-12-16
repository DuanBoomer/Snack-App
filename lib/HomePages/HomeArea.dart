import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:snackapp/HomePages/home.dart';
import 'package:snackapp/HomePages/quotes.dart';
import 'package:snackapp/HomePages/storm.dart';
import 'package:snackapp/HomePages/user.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final double navBarRadius = 50;
  final Color navBarColor = Colors.black;
  int _selectedIndex = 0;
  final List<Widget> pagesForBody = [
    HomePage(),
    QuotesPage(),
    StormPage(),
    UserPage(),
  ];

  void _navbarController(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: pagesForBody[_selectedIndex],
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
              selectedIndex: _selectedIndex,
              onTabChange: _navbarController,
              backgroundColor: navBarColor,
              textStyle: TextStyle(color: Colors.white),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundGradient: LinearGradient(colors: [
                Colors.grey.shade600,
                Colors.grey.shade800,
                Colors.grey.shade900
              ]),
              tabs: [
                GButton(
                  icon: Icons.wb_sunny_outlined,
                ),
                GButton(
                  icon: Icons.format_quote_rounded,
                ),
                GButton(
                  icon: Icons.storm_rounded,
                ),
                GButton(
                  icon: Icons.backup_table,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
