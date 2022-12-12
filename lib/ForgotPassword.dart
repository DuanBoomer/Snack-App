import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/ResetPassword.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ForgotPasswordPageState createState() => ForgotPasswordPageState();
}

class ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool isResetPasswordButtonPressed = false;
  bool isEmailTextFieldPressed = false;

  final Color textButtonBackground = Colors.grey.shade300;
  final Color backgroundColor = Color.fromARGB(255, 227, 218, 205);
  final Color textButtonColor = Color.fromARGB(255, 15, 27, 39);

  final emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: textButtonBackground,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.shade900,
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(2, 2),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(-2, -2),
                          ),
                        ]),
                    child: Column(
                      children: [
                        //////EMAIL TEXT FIELD//////
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 130),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
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
                            child: FocusScope(
                              child: Focus(
                                onFocusChange: ((value) {
                                  isEmailTextFieldPressed = value;
                                }),
                                child: TextField(
                                  onTap: () {
                                    setState(() {});
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
                          ),
                        ),
                      ],
                    ),
                  ),

                  ////RESET PASSWORD BUTTON//////
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 150),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              boxShadow: isResetPasswordButtonPressed
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
                              color: isResetPasswordButtonPressed
                                  ? textButtonColor
                                  : textButtonBackground,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextButton(
                              onHover: ((value) {
                                setState(
                                  () {
                                    isResetPasswordButtonPressed = value;
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
                                      builder: (context) =>
                                          ResetPasswordPage()),
                                );
                              },
                              child: Text(
                                "Reset Password",
                                style: GoogleFonts.robotoMono(
                                  color: isResetPasswordButtonPressed
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
