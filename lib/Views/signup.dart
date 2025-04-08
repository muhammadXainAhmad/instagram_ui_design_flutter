import 'package:flutter/material.dart';
import 'constants.dart';

class MySignupPage extends StatefulWidget {
  const MySignupPage({super.key});

  @override
  State<MySignupPage> createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            const Text(
              "Choose username",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(height: 10,),
            const Text(
              "You can always change it later",
              style: TextStyle(color: MyConstants.myTxtColor, fontSize: 18),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: const TextStyle(color: MyConstants.myTxtColor),
                  enabledBorder: MyConstants.myBorder,
                  focusedBorder: MyConstants.myBorder,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: MyConstants.myBtnColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
