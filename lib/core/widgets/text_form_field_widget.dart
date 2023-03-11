  import 'package:flutter/material.dart';

TextFormField textFormField(TextInputType keyboardType, String labelText,
      String hintText, Color fillColor, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          fillColor: fillColor,
          filled: true,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none))),
    );
  }