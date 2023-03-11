import 'package:flutter/material.dart';
import 'package:pizza/view/auth/register_page.dart';
import 'package:pizza/view/home_page.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();

  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _navigate(const HomePage());

      case 'register':
        return _navigate(RegisterPage());
    }

    return null;
  }

  MaterialPageRoute _navigate(Widget page) {
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
