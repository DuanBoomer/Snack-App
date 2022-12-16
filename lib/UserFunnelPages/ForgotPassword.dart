import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/UserFunnelPages/Elements/FormElement.dart';
import 'package:snackapp/UserFunnelPages/Elements/UserButton.dart';
import 'package:snackapp/UserFunnelPages/ResetPassword.dart';

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

                  FormElement(background: textButtonBackground, hintTexts: ["Email"]),
                  ////RESET PASSWORD BUTTON//////
                  UserButtonElement(text: "Reset Password", location: ResetPasswordPage()),
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
