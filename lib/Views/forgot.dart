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
  String txtFieldText = "Email address or username";
  String txtBtnText = "mobile number instead";

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
                child: Text(
                  "Enter your ${txtFieldText.toLowerCase()}.",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  "Can't reset your password?",
                  style: TextStyle(color: MyConstants.myBtnColor, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 12),
                child: TextField(
                  controller: emailController,
                  onChanged: (value) {
                    setState(() {
                      emailText = value;
                    });
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: txtFieldText,
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
                padding: const EdgeInsets.only(top: 16, bottom: 12),
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
              TextButton(
                onPressed: () {
                  setState(() {
                    if (txtFieldText == "Email address or username") {
                      txtFieldText = "Mobile number";
                      txtBtnText = "email address instead";
                    } else {
                      txtFieldText = "Email address or username";
                      txtBtnText = "mobile number instead";
                    }
                  });
                },
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  side: BorderSide(color: Color.fromARGB(179, 255, 255, 255)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  "Search by $txtBtnText",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
