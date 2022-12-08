import 'package:flutter/material.dart';
import 'package:snackapp/CreateAccount.dart';
// import 'package:snackapp/home.dart';
// import 'package:snackapp/loginImageButton.dart';
import 'package:snackapp/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeImageButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  WelcomeImageButton({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
      child: Container(
        width: 160,
        height: 160,
        // padding: EdgeInsets.all(80),
        child: Icon(
          icon,
          size: 60,
          color: color,
        ),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(6, 6),
                blurRadius: 5,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.blueGrey.shade600,
                offset: Offset(-6, -6),
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ]),
      ),
    );
  }
}

class WelcomePageText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;
  final FontWeight fontweight;

  WelcomePageText(
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

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  WelcomeState createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  // final bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 27, 39),
      body: SafeArea(
          child: Center(
              child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ////////////Header/////////////
          Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 50),
              child: WelcomePageText(
                text: "Snack Chat",
                color: Colors.white,
                fontsize: 28,
                fontweight: FontWeight.w900,
              )),

          // LoginImageButton(),

          Padding(
            padding: const EdgeInsets.only(bottom: 50, top: 50),
            child: Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  // enableInfiniteScroll: false,
                  aspectRatio: 2,
                  autoPlay: true,
                ),
                items: [
                  WelcomeImageButton(
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                  WelcomeImageButton(
                    icon: Icons.breakfast_dining,
                    color: Colors.lightGreen.shade900,
                  ),
                  WelcomeImageButton(
                    icon: Icons.local_pizza,
                    color: Colors.orange,
                  ),
                  WelcomeImageButton(
                    icon: Icons.coffee,
                    color: Colors.brown.shade900,
                  ),
                  WelcomeImageButton(
                    icon: Icons.rice_bowl,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
          ),

          Column(
            children: [
              WelcomePageText(
                text: "Chat about Snacks",
                color: Colors.white,
                fontsize: 18,
                fontweight: FontWeight.w700,
              ),
              WelcomePageText(
                text: "Add your friends and snack all day",
                color: Colors.white,
                fontsize: 15,
                fontweight: FontWeight.w400,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 20),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                // width: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 242, 232),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: WelcomePageText(
                  text: "Continue with Email",
                  color: Colors.black87,
                  fontweight: FontWeight.w800,
                  fontsize: 18,
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              // width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 27, 39),
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccountPage()));
                  },
                  child: WelcomePageText(
                    text: "Create an account",
                    color: Colors.white,
                    fontweight: FontWeight.w800,
                    fontsize: 18,
                  )),
              // child: WelcomePageText(
              //   text: "Create an account",
              //   color: Colors.white,
              //   fontweight: FontWeight.w800,
              //   fontsize: 18,
              // )
            ),
          ),

          /////////////Footer///////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              WelcomePageText(
                text: "Already have an account?",
                color: Colors.white,
                fontweight: FontWeight.w200,
                fontsize: 14,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: WelcomePageText(
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
