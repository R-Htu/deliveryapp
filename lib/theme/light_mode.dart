import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.white,
    inversePrimary: const Color.fromARGB(255, 65, 65, 65),
  ),
  scaffoldBackgroundColor: Colors.grey.shade300,
);
