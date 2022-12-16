import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:google_fonts/google_fonts.dart';
import 'package:snackapp/UserFunnelPages/Elements/FormElement.dart';
import 'package:snackapp/UserFunnelPages/Elements/UserButton.dart';
import 'package:snackapp/UserFunnelPages/ForgotPassword.dart';
import 'package:snackapp/HomePages/HomeArea.dart';

class LoginAccountPage extends StatefulWidget {
  const LoginAccountPage({super.key});

  @override
  LoginAccountPageState createState() => LoginAccountPageState();
}

class LoginAccountPageState extends State<LoginAccountPage> {
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

                  FormElement(
                    background: textButtonBackground,
                    hintTexts: ["Name", "Password"],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password",
                        style: GoogleFonts.robotoMono(
                          color: textButtonColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  UserButtonElement(
                    text: "Login",
                    location: Home(),
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
        ],
      ),
    );
  }
}
