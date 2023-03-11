  import 'package:flutter/material.dart';

Padding text(
      String text, double fontSize, Color color, MainAxisAlignment alignment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: fontSize, color: color, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }