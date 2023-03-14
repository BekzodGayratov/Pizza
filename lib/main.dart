import 'package:flutter/material.dart';
import 'package:pizza/core/router/router.dart';
import 'package:pizza/provider/basket_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => BasketProvider(),
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
      onGenerateRoute: RouteGenerator.router.onGenerate,
      initialRoute: 'register',
    );
  }
}
