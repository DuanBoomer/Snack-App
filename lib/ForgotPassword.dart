// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:snackapp/home.dart';
// import 'package:snackapp/loginImageButton.dart';
// import 'package:snackapp/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/ResetPassword.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ForgotPasswordPageState createState() => ForgotPasswordPageState();
}

class ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  "Forgot your password?",
                  style: GoogleFonts.robotoMono(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Text(
                  "Enter your email and we will send you a link to reset your password",
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
                      hintText: "Email",
                    )),
              ),
              Center(
                heightFactor: 1.5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 15, 27, 39),
                    // border: Border.all(
                    //     width: 1, color: Color.fromARGB(255, 15, 27, 39))
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPasswordPage()));
                    },
                    child: Text(
                      "Reset Password",
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
            ],
          ),
        )));
  }
}
