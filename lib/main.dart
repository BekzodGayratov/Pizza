import 'package:flutter/material.dart';
import 'package:pizza/core/router/router.dart';
import 'package:pizza/provider/auth/step_one_provider.dart';
import 'package:pizza/provider/cart_provider.dart';
import 'package:pizza/provider/category_provider.dart';
import 'package:provider/provider.dart';

import 'core/widgets/pizza_text_theme.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CartProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => StepOneProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => CategoryProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: PizzaThemeData().theme,
      onGenerateRoute: RouteGenerator.router.onGenerate,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    );
  }
}
