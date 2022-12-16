import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class TextFieldElement extends StatefulWidget {
  final TextEditingController textController = TextEditingController();
  bool isTextFieldPressed = false;
  final String hintText;

  TextFieldElement({super.key, required this.hintText});

  @override
  TextFieldElementState createState() => TextFieldElementState();
}

class TextFieldElementState extends State<TextFieldElement> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 130),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: widget.isTextFieldPressed
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
              widget.isTextFieldPressed = value;
              setState(() {});
            }),
            child: TextField(
              controller: widget.textController,
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                suffixIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    widget.textController.clear();
                  },
                  icon: Icon(Icons.clear_rounded),
                ),
              ),
            ),
            // ),
          ),
        ),
      ),
    );
  }
}
