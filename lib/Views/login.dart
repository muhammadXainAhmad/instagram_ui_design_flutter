import 'package:flutter/material.dart';
import 'constants.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  String emailText = "";
  String passText = "";
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScope.of(context).requestFocus(FocusNode());
    },
      child: Scaffold(
        backgroundColor: MyConstants.myPrimaryColor,
        appBar: AppBar(
          backgroundColor: MyConstants.myPrimaryColor,
          leading: const Icon(Icons.close, color: Colors.white, size: 32),
        ),
        body: Center(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "English (UK)",
                    style: TextStyle(color: MyConstants.myTxtColor, fontSize: 18),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: MyConstants.myTxtColor,
                    size: 32,
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Image.asset("assets/instagramLogo.png", width: 70, height: 70),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: TextField(
                  controller: emailController,
                  onChanged: (value) {
                    setState(() {
                      emailText = value;
                    });
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Username, email address or mobile number",
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
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: TextField(
                  controller: passController,
                  obscureText: isPasswordHidden,
                  onChanged: (value) {
                    setState(() {
                      passText = value;
                    });
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: MyConstants.myTxtColor),
                    enabledBorder: MyConstants.myBorder,
                    focusedBorder: MyConstants.myBorder2,
      
                    suffixIcon:
                        passText.isNotEmpty
                            ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordHidden = !isPasswordHidden;
                                });
                              },
                              icon: Icon(
                                isPasswordHidden
                                    ? Icons.visibility_off_outlined
                                    : Icons.remove_red_eye_outlined,
                                color: MyConstants.myTxtColor,
                                size: 30,
                              ),
                            )
                            : null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
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
                    "Log in",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("forgotPage");
                },
                child: const Text(
                  "Forgotten Password?",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 148),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("signup");
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                    backgroundColor: MyConstants.myPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(
                        color: MyConstants.myBtnColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Create new account",
                    style: TextStyle(color: MyConstants.myBtnColor, fontSize: 18),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/metaLogo.png", width: 60, height: 60),
                  const Text(
                    "Meta",
                    style: TextStyle(color: MyConstants.myBtnColor, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
