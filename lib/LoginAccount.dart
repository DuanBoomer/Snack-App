// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:snackapp/home.dart';
// import 'package:snackapp/loginImageButton.dart';
// import 'package:snackapp/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/ForgotPassword.dart';
import 'package:snackapp/home.dart';

class LoginAccountPage extends StatefulWidget {
  const LoginAccountPage({super.key});

  @override
  LoginAccountPageState createState() => LoginAccountPageState();
}

class LoginAccountPageState extends State<LoginAccountPage> {
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
                  "Log in to your account",
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
                      hintText: "Password",
                    )),
              ),
              TextButton(
                  onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage()));
                    },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 15, 27, 39),
                        decoration: TextDecoration.underline),
                  )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 15, 27, 39),
                      // border: Border.all(
                      //     width: 1, color: Color.fromARGB(255, 15, 27, 39))
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Login",
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
