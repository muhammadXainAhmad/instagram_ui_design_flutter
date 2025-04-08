import 'package:flutter/material.dart';
import 'constants.dart';

class MyForgotPage extends StatefulWidget {
  const MyForgotPage({super.key});

  @override
  State<MyForgotPage> createState() => _MyForgotPageState();
}

class _MyForgotPageState extends State<MyForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyConstants.myPrimaryColor,
      appBar: AppBar(
        backgroundColor: MyConstants.myPrimaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Find your account",
              style: TextStyle(color: Colors.white, fontSize: 28),
              
            ),
            const Text(
              "Enter your email address or username",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Can't reset your password?",
                  style: TextStyle(color: MyConstants.myBtnColor, fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 12),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Email address or username",
                  labelStyle: const TextStyle(color: MyConstants.myTxtColor),
                  enabledBorder: MyConstants.myBorder,
                  focusedBorder: MyConstants.myBorder,
                ),
              ),
            ),
            const Text(
              "You may receive WhatsApp and SMS notifications from us for security and login purposes.",
              style: TextStyle(color: MyConstants.myTxtColor, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 12),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: MyConstants.myBtnColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Search by mobile number instead",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
