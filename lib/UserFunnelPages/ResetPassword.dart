import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/HomePages/HomeArea.dart';
import 'package:snackapp/UserFunnelPages/Elements/FormElement.dart';
import 'package:snackapp/UserFunnelPages/Elements/UserButton.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  ResetPasswordPageState createState() => ResetPasswordPageState();
}

class ResetPasswordPageState extends State<ResetPasswordPage> {
  bool isResetPasswordButtonPressed = false;
  bool isEmailTextFieldPressed = false;
  bool isMagicCodeFieldPressed = false;
  bool isPasswordTextFieldPressed = false;

  final Color textButtonBackground = Colors.grey.shade300;
  final Color backgroundColor = Color.fromARGB(255, 227, 218, 205);
  final Color textButtonColor = Color.fromARGB(255, 15, 27, 39);

  final emailTextController = TextEditingController();
  final magicCodeTextController = TextEditingController();
  // String name = '';

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
      ),

      //////////BODY///////////////
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      "Reset your password",
                      style: GoogleFonts.robotoMono(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Text(
                      "Enter the magic code that was sent to your email",
                      style: GoogleFonts.robotoMono(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  FormElement(
                      background: textButtonBackground,
                      hintTexts: ["Email", "Magic Code", "Password"]),

                  ////CREATE BUTTON//////
                  UserButtonElement(text: "Reset Password", location: Home()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
