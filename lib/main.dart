import 'package:flutter/material.dart';
import 'package:pizza/view/home_page.dart';
import 'package:pizza/view/register.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    );  
  }
}
