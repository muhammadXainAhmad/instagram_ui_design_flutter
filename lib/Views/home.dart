import 'package:flutter/material.dart';
import 'package:instagram_ui_design/Views/constants.dart';
import 'package:instagram_ui_design/Views/login.dart';
import 'package:instagram_ui_design/Views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyConstants.myPrimaryColor,
      appBar: AppBar(
        backgroundColor: MyConstants.myPrimaryColor,
        title: Text(
          "INSTAGRAM",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 300, color: MyConstants.myBtnColor),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
              child: ElevatedButton(
                onPressed: () async {
                  var sharedPref = await SharedPreferences.getInstance();
                  sharedPref.setBool(SplashScreenState.KEYLOGIN, false);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyLoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  backgroundColor: MyConstants.myBtnColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
