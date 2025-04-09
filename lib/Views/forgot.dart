import 'package:flutter/material.dart';
import 'constants.dart';

class MyForgotPage extends StatefulWidget {
  const MyForgotPage({super.key});

  @override
  State<MyForgotPage> createState() => _MyForgotPageState();
}

class _MyForgotPageState extends State<MyForgotPage> {
  final TextEditingController emailController = TextEditingController();
  String emailText = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: MyConstants.myPrimaryColor,
        appBar: AppBar(
          backgroundColor: MyConstants.myPrimaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find your account",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const Text(
                  "Enter your email address or username",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  padding: EdgeInsets.all(0),
                ),
                onPressed: () {},
                child: const Text(
                  "Can't reset your password?",
                  style: TextStyle(color: MyConstants.myBtnColor, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: TextField(
                  controller: emailController,
                  onChanged: (value) {
                    setState(() {
                      emailText = value;
                    });
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email address or username",
                    labelStyle: const TextStyle(color: MyConstants.myTxtColor),
                    enabledBorder: MyConstants.myBorder,
                    focusedBorder: MyConstants.myBorder2,
                    suffixIcon:
                        emailText.isNotEmpty
                            ? IconButton(
                              onPressed: () {
                                setState(() {
                                  emailController.clear();
                                  emailText = "";
                                });
                              },
                              icon: Icon(
                                Icons.close,
                                color: MyConstants.myTxtColor,
                                size: 30,
                              ),
                            )
                            : null,
                  ),
                ),
              ),
              const Text(
                "You may receive WhatsApp and SMS notifications from us for security and login purposes.",
                style: TextStyle(color: MyConstants.myTxtColor, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                    backgroundColor: MyConstants.myBtnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Search by mobile number instead",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
