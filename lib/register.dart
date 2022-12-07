import 'package:flutter/material.dart';
import 'package:snackapp/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  // final bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Sign In",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              ////////////Header/////////////
              const Text(
                "Not registered?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const Text(
                "Let us get you started",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 70,
              ),

              /////////////////Name Text Field//////////////////
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // child: const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 25),
                  child: const TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Name",
                    ),
                  ),
                  // ),
                ),
              ),

              /////////////////Email Text Field//////////////////
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // child: const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 25),
                  child: const TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                    ),
                  ),
                  // ),
                ),
              ),

              //////////////////Password Text Field////////////
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // child: const Padding(
                  // padding: EdgeInsets.symmetric(horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    obscureText: true,
                    style: const TextStyle(fontSize: 18),
                    // obscureText: _isObscure,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                    ),
                  ),
                  // ),
                ),
              ),

              /////////////SignIn button////////////////////
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: 400,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
            ]))));
  }
}
