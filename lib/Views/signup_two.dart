import 'package:flutter/material.dart';
import 'package:instagram_ui_design/Views/home.dart';
import 'package:instagram_ui_design/Views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constants.dart';

class MySignupPageTwo extends StatefulWidget {
  const MySignupPageTwo({super.key});

  @override
  State<MySignupPageTwo> createState() => _MySignupPageTwoState();
}

class _MySignupPageTwoState extends State<MySignupPageTwo> {
  bool isBtnClicked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Text(
            "Create a password",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 10),
          const Text(
            "For security, your password must be six",
            style: TextStyle(color: MyConstants.myTxtColor, fontSize: 18),
          ),
          const Text(
            "characters or more.",
            style: TextStyle(color: MyConstants.myTxtColor, fontSize: 18),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
              left: 32,
              right: 32,
            ),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: const TextStyle(color: MyConstants.myTxtColor),
                enabledBorder: MyConstants.myBorder,
                focusedBorder: MyConstants.myBorder2,
              ),
            ),
          ),

          InkWell(
            onTap: () {
              setState(() {
                isBtnClicked = !isBtnClicked;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  isBtnClicked
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                  color: MyConstants.myBtnColor,
                  size: 24,
                ),
                SizedBox(width: 5),
                const Text(
                  "Remember password",
                  style: TextStyle(color: MyConstants.myTxtColor, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: ElevatedButton(
              onPressed: () async {
                var sharedPref = await SharedPreferences.getInstance();
                sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (Route<dynamic> route) =>
                      false, // Removes all previous routes
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
                backgroundColor: MyConstants.myBtnColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
