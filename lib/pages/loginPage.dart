import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: [
          upperPart(),
          FadeInUp(child: loginForm()),
        ],
      ),
    );
  }

  Center loginForm() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 300),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white30, width: 2),
              ),
              child: Column(
                children: [form(), auth(), signup()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container signup() {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: const Text("Sign up now",
          style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1))),
    );
  }

  Container form() {
    return Container(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                child: Text(
                  "ENTER YOUR DETAILS",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color.fromRGBO(143, 148, 251, 1),
                ),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email or Phone number",
                    hintStyle: TextStyle(color: Colors.grey[700])),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color.fromRGBO(143, 148, 251, 1),
                ),
              ),
              child: TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey[700])),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFFBD95A5), Color(0xFF6F4BB4)],
                ),
              ),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: const Text("Forgot Password?",
                  style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1))),
            ),
            const Divider(
              color: Color(0xFF585858),
            )
          ],
        ),
      ),
    );
  }

  Padding auth() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ZoomIn(delay: Durations.extralong2,
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white30, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 18,
                    width: 19,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/googlelogo.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    child: const Text(
                      " Google",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          ZoomIn(delay: Durations.extralong2,
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white30, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 18,
                    width: 19,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/applelogo.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    child: const Text(
                      " Apple",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row upperPart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FadeInLeft(
          child: Container(
            height: 400,
            width: 180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/flower-left.jpg"),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        BounceInDown(
          child: Container(
            child: const Text(
              "welcome\nback",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900,),
            ),
          ),
        ),
        FadeInRight(
          child: Positioned(
            right: 90,
            child: Container(
              height: 400,
              width: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/flower-right.jpg"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
        )
      ],
    );
  }
}
