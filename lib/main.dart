

import 'package:flutter/material.dart';
import 'package:pizza/provider/1chi_counter_provider.dart';
import 'package:pizza/provider/2chi_counter_provider.dart';
import 'package:pizza/provider/3chi_counter_provider.dart';
import 'package:pizza/provider/4chi_counter_provider.dart';
import 'package:pizza/view/order_page.dart';
import 'package:provider/provider.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => FourthCounterProvider(),
      ),
       ChangeNotifierProvider(
        create: (context) => ThirdCounterProvider(),
      ),
       ChangeNotifierProvider(
        create: (context) => SecondCounterProvider(),
      ),
       ChangeNotifierProvider(
        create: (context) => FirstCounterProvider(),
      ),
    ],child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderPage(),
    );
  }
}
