import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Poppins",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: const TextStyle(color: kTextColor),
    contentPadding: const EdgeInsets.fromLTRB(42, 15, 5, 15),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: kTextColor),
      borderRadius: BorderRadius.circular(30),
      gapPadding: 8,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: kTextColor),
      borderRadius: BorderRadius.circular(30),
      gapPadding: 8,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.black12,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  );
}
