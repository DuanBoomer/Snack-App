import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/UserFunnelPages/Elements/FormElement.dart';
import 'package:snackapp/UserFunnelPages/Elements/UserButton.dart';
import 'package:snackapp/UserFunnelPages/LoginAccount.dart';
import 'package:snackapp/HomePages/HomeArea.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState extends State<CreateAccountPage> {
  bool isEventButtonPressed = false;
  bool isLoginButtonPressed = false;

  final Color textButtonBackground = Colors.grey.shade300;
  final Color backgroundColor = Color.fromARGB(255, 227, 218, 205);
  final Color textButtonColor = Color.fromARGB(255, 15, 27, 39);

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
              ),
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

                  FormElement(
                      background: textButtonBackground,
                      hintTexts: ["Name", "Email", "Password"]),

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

                  UserButtonElement(text: "Create", location: Home()),

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
        ],
      ),
    );
  }
}
