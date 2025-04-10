import 'package:flutter/material.dart';
import 'package:instagram_ui_design/Views/forgot.dart';
import 'package:instagram_ui_design/Views/home.dart';
import 'package:instagram_ui_design/Views/signup.dart';
import 'package:instagram_ui_design/Views/signup_two.dart';
import 'package:instagram_ui_design/Views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "loginPage",
      routes: {
        "signup": (context) => const MySignupPage(),
        "signupTwo": (context) => const MySignupPageTwo(),
        "forgotPage": (context) => const MyForgotPage(),
        "homePage": (context) => const HomePage(),
      },

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
