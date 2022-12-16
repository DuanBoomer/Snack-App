import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:snackapp/HomePages/HomeArea.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class UserButtonElement extends StatefulWidget {
  final TextEditingController textController = TextEditingController();
  bool isButtonPressed = false;
  final String text;
  var location;

  final Color textButtonBackground = Colors.grey.shade300;
  final Color textButtonColor = Color.fromARGB(255, 15, 27, 39);
  UserButtonElement({super.key, required this.text, required this.location});

  @override
  UserButtonElementState createState() => UserButtonElementState();
}

class UserButtonElementState extends State<UserButtonElement> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 150),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                boxShadow: widget.isButtonPressed
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
                color: widget.isButtonPressed
                    ? widget.textButtonColor
                    : widget.textButtonBackground,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextButton(
                onHover: ((value) {
                  setState(
                    () {
                      widget.isButtonPressed = value;
                    },
                  );
                }),
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget.location,
                    ),
                  );
                },
                child: Text(
                  widget.text,
                  style: GoogleFonts.robotoMono(
                    color: widget.isButtonPressed
                        ? widget.textButtonBackground
                        : widget.textButtonColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
