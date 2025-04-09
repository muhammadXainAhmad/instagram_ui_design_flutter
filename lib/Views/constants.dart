import 'package:flutter/material.dart';

class MyConstants {
  static final myBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Color.fromARGB(179, 255, 255, 255),
      width: 1,
    ),
  );
  static final myBorder2 = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Color.fromRGBO(250, 250, 250, 1),
      width: 1,
    ),
  );

  static const myPrimaryColor = Color.fromARGB(255, 29, 39, 49);

  static const myBtnColor = Color.fromARGB(255, 10, 126, 221);

  static const myTxtColor = Color.fromARGB(179, 255, 255, 255);

  List<String> languages = [
    "Afrikaans",
    "Chinese (中文 & 台灣)",
    "Czech (Český)",
    "Danish (Dansk)",
    "Dutch (Nederlands)",
    "English (US)",
    "English (UK)",
    "Finnish (Suomi)",
    "French (Français)",
    "German (Deutsch)",
    "Greek (Ελληνικά)",
    "Indonesian (Bahasa Indonesia)",
    "Italian (Italiano)",
    "Japanese (日本語)",
    "Korean (한국어)",
    "Malay (Bahasa Melayu)",
    "Norwegian (Norsk)",
    "Polish (Polski)",
    "Portuguese (Português)",
    "Russian (Русский)",
    "Spanish (Español)",
    "Swedish (Svenska)",
    "Tagalog (Filipino)",
    "Thai (ภาษาไทย)",
    "Turkish (Türkçe)",
  ];
}
