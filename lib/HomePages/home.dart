import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final double appbarRounding = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 17, 17),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(appbarRounding),
                    bottomRight: Radius.circular(appbarRounding))),
            expandedHeight: 300,
            collapsedHeight: 80,
            backgroundColor: Color.fromARGB(255, 56, 211, 235),
            title: Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              child: Text(
                "Good morning!",
                style: GoogleFonts.robotoMono(),
              ),
              width: 200,
            ),
            titleTextStyle: TextStyle(
              fontSize: 80,
              color: Colors.black,
            ),
            leading: Icon(Icons.local_pizza),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Quick Tips",
                      style: GoogleFonts.robotoMono(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  ////////////CARD////////////////
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Scan your note",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Transfer your notes with...",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Scan your note",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Transfer your notes with...",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Scan your note",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Transfer your notes with...",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Scan your note",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Transfer your notes with...",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Scan your note",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Transfer your notes with...",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Scan your note",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Transfer your notes with...",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Your monthly report",
                      style: GoogleFonts.robotoMono(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.black45,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                          width: 170,
                          child: Text(
                            "68/90 Tasks done",
                            style: GoogleFonts.robotoMono(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // width: 100,
                            height: 300,
                            decoration: BoxDecoration(
                                // color: Colors.deepPurple.shade700,
                                gradient: LinearGradient(colors: [
                                  Colors.deepPurple,
                                  Colors.deepPurple.shade700,
                                  Colors.deepPurple.shade900
                                ])),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
