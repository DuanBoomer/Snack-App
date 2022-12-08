// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:snackapp/home.dart';
// import 'package:snackapp/loginImageButton.dart';
// import 'package:snackapp/register.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState extends State<CreateAccountPage> {
  bool isEventButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 249, 242, 232),
          leading: IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 15, 27, 39),
                  size: 30,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 15, 27, 39))),
                  child: Text(
                    "Login",
                    // textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(
                      color: Color.fromARGB(255, 15, 27, 39),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 249, 242, 232),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  "Create an account",
                  style: GoogleFonts.robotoMono(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Text(
                  "Feel the tasty snacks just a min away",
                  style: GoogleFonts.robotoMono(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextField(
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintText: "Name",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextField(
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintText: "Email",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextField(
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintText: "Password",
                    )),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(isEventButtonPressed
                        ? Icons.check_circle_outline_outlined
                        : Icons.circle_outlined),
                    onPressed: () {
                      setState(() {
                        isEventButtonPressed = !isEventButtonPressed;
                      });
                    },
                  ),
                  Container(
                    width: 275,
                    child: Text(
                      "Yes, please send me updates on special events, offers, and other information from SnackApp",
                      // overflow: TextOverflow.clip,
                      style: GoogleFonts.robotoMono(
                        color: Colors.black87,
                        fontSize: 12.5,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 153, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 15, 27, 39),
                      // border: Border.all(
                      //     width: 1, color: Color.fromARGB(255, 15, 27, 39))
                    ),
                    child: Text(
                      "Create",
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.robotoMono(
                        // color: Color.fromARGB(255, 15, 27, 39),
                        color: Color.fromARGB(255, 249, 242, 232),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "By creating an account, you agree to our Privacy Policy",
                  style: GoogleFonts.robotoMono(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }
}
