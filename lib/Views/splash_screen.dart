import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_ui_design/Views/constants.dart';
import 'package:instagram_ui_design/Views/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 380),
            Image.asset("assets/instagramLogo.png", width: 70, height: 70),
            SizedBox(height: 340),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/metaLogo.png", width: 60, height: 60),
                const Text(
                  "Meta",
                  style: TextStyle(
                    color: MyConstants.myBtnColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void whereToGo() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyLoginPage()),
      );
    });
  }
}
