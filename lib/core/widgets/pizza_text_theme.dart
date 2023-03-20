import 'package:flutter/material.dart';

class PizzaThemeData {
  ThemeData theme = ThemeData(
      textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 15,
          )));
}
