import 'package:flutter/material.dart';
import 'package:snackapp/home.dart';
import 'package:snackapp/loginImageButton.dart';
import 'package:snackapp/register.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginPageText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;
  final FontWeight fontweight;

  LoginPageText(
      {required this.text,
      required this.color,
      required this.fontsize,
      required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.robotoMono(
        color: color,
        fontWeight: fontweight,
        fontSize: fontsize,
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  // final bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      body: SafeArea(
          child: Center(
              child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ////////////Header/////////////
          Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 50),
              child: LoginPageText(
                text: "Snack Chat",
                color: Colors.white,
                fontsize: 28,
                fontweight: FontWeight.w900,
              )),

          // LoginImageButton(),

          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, bottom: 100),
            child: Container(
              height: 160,
              child: ListView.builder(
                // padding: EdgeInsets.symmetric(horizontal: 200),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      // SizedBox(width: 100,),
                      LoginImageButton(),
                    ],
                  );
                },
              ),
            ),
          ),

          Column(
            children: [
              LoginPageText(
                text: "Chat about Snacks",
                color: Colors.white,
                fontsize: 18,
                fontweight: FontWeight.w700,
              ),
              LoginPageText(
                text: "Add your friends and snack all day",
                color: Colors.white,
                fontsize: 15,
                fontweight: FontWeight.w400,
              ),
            ],
          ),
          // SizedBox(
          //   height: 70,
          // ),

          /////////////////Email Text Field//////////////////

          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 20),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                // width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: LoginPageText(
                  text: "Continue with Email",
                  color: Colors.black87,
                  fontweight: FontWeight.w800,
                  fontsize: 18,
                )),
          ),

          //////////////////Password Text Field////////////
          ///

          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                // width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: LoginPageText(
                  text: "Create an account",
                  color: Colors.white,
                  fontweight: FontWeight.w800,
                  fontsize: 18,
                )),
          ),

          /////////////Footer///////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LoginPageText(
                text: "Already have an account?",
                color: Colors.white,
                fontweight: FontWeight.w100,
                fontsize: 14,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: LoginPageText(
                  text: "Login",
                  color: Colors.white,
                  fontweight: FontWeight.w600,
                  fontsize: 14,
                ),
              ),
            ],
          )
        ],
      ))),
    );
  }
}
