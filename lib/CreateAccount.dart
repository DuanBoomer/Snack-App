// import 'dart:html';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/LoginAccount.dart';
import 'package:snackapp/home.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState extends State<CreateAccountPage> {
  bool isEventButtonPressed = false;
  bool isCreateButtonPressed = false;
  bool isLoginButtonPressed = false;
  bool isNameTextFieldPressed = false;
  bool isEmailTextFieldPressed = false;
  bool isPasswordTextFieldPressed = false;

  final Color textButtonBackground = Colors.grey.shade300;
  final Color backgroundColor = Color.fromARGB(255, 227, 218, 205);
  final Color textButtonColor = Color.fromARGB(255, 15, 27, 39);
  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  String name = '';

  @override
  Widget build(BuildContext context) {
    // print(textController.text);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.arrow_back_ios,
              color: textButtonColor,
              size: 30,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          //////LOGIN BUTTON IN APPBAR//////
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  boxShadow: isLoginButtonPressed
                      ? []
                      : [
                          BoxShadow(
                            color: Colors.blueGrey.shade900,
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(-1, -1),
                          ),
                        ],
                  color: isLoginButtonPressed
                      ? textButtonColor
                      : textButtonBackground,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(width: 1, color: textButtonBackground)),
              child: TextButton(
                onHover: ((value) {
                  setState(
                    () {
                      isLoginButtonPressed = value;
                    },
                  );
                }),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginAccountPage(),
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.robotoMono(
                    color: isLoginButtonPressed
                        ? textButtonBackground
                        : textButtonColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      //////////BODY///////////////
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            // child: Expanded(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //////HEADER//////
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

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: textButtonBackground,
                    ),
                    child: Column(
                      children: [
                        //////NAME TEXT FIELD//////
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 130),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            decoration: BoxDecoration(
                                color: textButtonBackground,
                                boxShadow: isNameTextFieldPressed
                                    ? [
                                        BoxShadow(
                                          color: Colors.blueGrey.shade900,
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(1, 1),
                                          inset: true,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                          offset: Offset(-1, -1),
                                          inset: true,
                                        ),
                                      ]
                                    : []),
                            child: TextField(
                              onTap: () {
                                setState(() {
                                  isNameTextFieldPressed = true;
                                });
                              },
                              controller: nameTextController,
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Name",
                                suffixIcon: IconButton(
                                  splashRadius: 20,
                                  onPressed: () {
                                    nameTextController.clear();
                                  },
                                  icon: Icon(Icons.clear_rounded),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ),

                        //////EMAIL TEXT FIELD//////
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 130),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            decoration: BoxDecoration(
                                color: textButtonBackground,
                                boxShadow: isEmailTextFieldPressed
                                    ? [
                                        BoxShadow(
                                          color: Colors.blueGrey.shade900,
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(1, 1),
                                          inset: true,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                          offset: Offset(-1, -1),
                                          inset: true,
                                        ),
                                      ]
                                    : []),
                            child: TextField(
                              onTap: () {
                                setState(() {
                                  isEmailTextFieldPressed = true;
                                });
                              },
                              controller: emailTextController,
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                suffixIcon: IconButton(
                                  splashRadius: 20,
                                  onPressed: () {
                                    emailTextController.clear();
                                  },
                                  icon: Icon(Icons.clear_rounded),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //////PASSWORD TEXT FIELD//////
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 130),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            decoration: BoxDecoration(
                                color: textButtonBackground,
                                boxShadow: isPasswordTextFieldPressed
                                    ? [
                                        BoxShadow(
                                          color: Colors.blueGrey.shade900,
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(1, 1),
                                          inset: true,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                          offset: Offset(-1, -1),
                                          inset: true,
                                        ),
                                      ]
                                    : []),
                            child: TextField(
                              onTap: () {
                                setState(() {
                                  isPasswordTextFieldPressed = true;
                                });
                              },
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //////OFFER SUBSCRIPTION//////
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(isEventButtonPressed
                              ? Icons.check_circle_outline_outlined
                              : Icons.circle_outlined),
                          onPressed: () {
                            setState(
                              () {
                                isEventButtonPressed = !isEventButtonPressed;
                              },
                            );
                          },
                          // ),
                        ),
                        Expanded(
                          child: Text(
                            "Yes, please send me updates on special events, offers, and other information from SnackApp",
                            style: GoogleFonts.robotoMono(
                              color: Colors.black87,
                              fontSize: 12.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ////CREATE BUTTON//////
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 150),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              boxShadow: isCreateButtonPressed
                                  ? []
                                  : [
                                      BoxShadow(
                                        color: Colors.blueGrey.shade900,
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        offset: Offset(1, 1),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        offset: Offset(-1, -1),
                                      ),
                                    ],
                              color: isCreateButtonPressed
                                  ? textButtonColor
                                  : textButtonBackground,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextButton(
                              onHover: ((value) {
                                setState(
                                  () {
                                    isCreateButtonPressed = value;
                                  },
                                );
                              }),
                              style: ButtonStyle(
                                splashFactory: NoSplash.splashFactory,
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.transparent),
                                overlayColor: MaterialStateProperty.all<Color>(
                                    Colors.transparent),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ),
                                );
                              },
                              child: Text(
                                "Create",
                                style: GoogleFonts.robotoMono(
                                  color: isCreateButtonPressed
                                      ? textButtonBackground
                                      : textButtonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //////PRIVACY SECTION//////
                  Container(
                    alignment: AlignmentDirectional.center,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
