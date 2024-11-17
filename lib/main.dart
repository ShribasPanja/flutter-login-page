
import 'package:flutter/material.dart';
import 'package:login_page/pages/loginPage.dart';

void main() {
    return(runApp(Homeapp()));
}

class Homeapp extends StatelessWidget {
  const Homeapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
    );
  }
}