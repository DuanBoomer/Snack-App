import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
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
  // final Color navBarColor = Colors.black87;
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
      backgroundColor: Color.fromARGB(255, 17, 17, 17),
      // backgroundColor: Colors.white,
      body: pagesForBody[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 29, 29, 29),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(navBarRadius),
                  topRight: Radius.circular(navBarRadius))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: _navbarController,
              backgroundColor: Colors.transparent,
              textStyle: GoogleFonts.robotoMono(
                color: Colors.white,
                fontSize: 14,

              ),
              gap: 15,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundGradient: LinearGradient(colors: [
                Colors.black12,
                Colors.black45,
                Colors.black87
              ]),
              tabs: [
                GButton(
                  icon: Icons.wb_sunny_outlined,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.format_quote_rounded,
                  text: "Quotes",
                ),
                GButton(
                  icon: Icons.storm_rounded,
                  text: "Insights",
                ),
                GButton(
                  icon: Icons.backup_table,
                  text: "Menu",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
