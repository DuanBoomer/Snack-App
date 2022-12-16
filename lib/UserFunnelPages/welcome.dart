import 'package:flutter/material.dart';
import 'package:snackapp/UserFunnelPages/CreateAccount.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:snackapp/UserFunnelPages/LoginAccount.dart';

class WelcomeImageButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  const WelcomeImageButton({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 20),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              const BoxShadow(
                color: Colors.black,
                offset: Offset(5, 5),
                blurRadius: 5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.blueGrey.shade600,
                offset: const Offset(-5, -5),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ]),
        child: Icon(
          icon,
          size: 60,
          color: color,
        ),
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
  // final Color textButtonBackground = Colors.grey.shade300;
  final Color textColor = const Color.fromARGB(255, 227, 218, 205);
  final Color backgroundColor = const Color.fromARGB(255, 15, 27, 39);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(children: [
        SafeArea(
          // child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ////////////Header/////////////
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 50),
                child: Text(
                  "Snack Chat",
                  style: GoogleFonts.robotoMono(
                    color: textColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                  ),
                ),
              ),

              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                ),
                items: [
                  const WelcomeImageButton(
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                  WelcomeImageButton(
                    icon: Icons.breakfast_dining,
                    color: Colors.lightGreen.shade900,
                  ),
                  const WelcomeImageButton(
                    icon: Icons.local_pizza,
                    color: Colors.orange,
                  ),
                  WelcomeImageButton(
                    icon: Icons.coffee,
                    color: Colors.brown.shade900,
                  ),
                  const WelcomeImageButton(
                    icon: Icons.rice_bowl,
                    color: Colors.black87,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Text(
                      "Chat about Snacks",
                      style: GoogleFonts.robotoMono(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Add your friends and snack all day",
                      style: GoogleFonts.robotoMono(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: textColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateAccountPage()),
                            );
                          },
                          child: Text(
                            "Create an account",
                            style: GoogleFonts.robotoMono(
                              color: backgroundColor,
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

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          border: Border.all(width: 2, color: textColor),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginAccountPage()),
                            );
                          },
                          child: Text(
                            "Continue with email",
                            style: GoogleFonts.robotoMono(
                              color: textColor,
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
        // ),
      ]),
    );
  }
}
