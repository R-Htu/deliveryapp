import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.white,
    inversePrimary: const Color.fromARGB(255, 39, 38, 38),
  ),
  scaffoldBackgroundColor: Colors.grey.shade300,
  textTheme: TextTheme(
    headlineMedium: TextStyle(color: Colors.black), // Updated to headlineMedium
    bodyLarge: TextStyle(color: Colors.black), // Updated to bodyLarge
  ),
);
