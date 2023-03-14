import 'package:flutter/material.dart';
import 'package:pizza/view/auth/otp_page.dart';
import 'package:pizza/view/auth/step_one_page.dart';
import 'package:pizza/view/home_page.dart';
import '../../view/pizza_page.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();

  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _navigate(const HomePage());
      case 'step_one':
        return _navigate(StepOnePage());
      case 'pizza':
        return _navigate(PitsaPage());
       case 'otp':
        return _navigate(OtpPage(token: settings.arguments as String,));
    }

    return null;
  }

  MaterialPageRoute _navigate(Widget page) {
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
