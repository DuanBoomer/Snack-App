import 'package:flutter/material.dart';

class LoginImageButton extends StatefulWidget {
  const LoginImageButton({super.key});

  @override
  LoginImageButtonState createState() => LoginImageButtonState();
}

class LoginImageButtonState extends State<LoginImageButton> {
  // final bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
      child: Container(
        width: 160,
        height: 160,
        // padding: EdgeInsets.all(80),
        child: Icon(
          Icons.favorite,
          size: 60,
          color: Colors.red,
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
