import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza/provider/4chi_counter_provider.dart';
import 'package:pizza/view/bottomSheetParts.dart';
import 'package:pizza/view/eboveParts.dart';
import 'package:provider/provider.dart';

import '../provider/1chi_counter_provider.dart';
import '../provider/2chi_counter_provider.dart';
import '../provider/3chi_counter_provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int chickenSladkiPrice = 499;
  int easyBirPrice = 549;
  int easyIkkiPrice = 249;
  int fourSeasonPrice = 630;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
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
      ],
      child: _scaffold(context),
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: AboveParts(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                elevation: 500,
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12))),
                builder: (context) {
                  return FractionallySizedBox(
                    heightFactor: 0.9,
                    child: BottomSheetParts(
                        chickenSladkiPrice: chickenSladkiPrice,
                        easyBirPrice: easyBirPrice,
                        easyIkkiPrice: easyIkkiPrice,
                        fourSeasonPrice: fourSeasonPrice),
                  );
                });
          },
          backgroundColor: Color.fromRGBO(255, 112, 16, 1),
          elevation: 0,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ImageIcon(
                AssetImage("assets/korzinka.png"),
              ),
              Positioned(
                left: 20,
                bottom: 25,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromRGBO(255, 112, 16, 1),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 112, 16, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 1,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageIcon(
              AssetImage(
                "assets/pizza.png",
              ),
              color: Color.fromRGBO(255, 112, 16, 1),
              size: 32,
            ),
            SizedBox(
              width: 19.5,
            ),
            Container(
              height: 40,
              width: 99,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/fire.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Акции",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(226, 53, 53, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 101,
              decoration: BoxDecoration(
                // shape: BoxShape.rectangle,
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/pirog.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Пицца",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 94,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/sushi.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Суши",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/cola.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Напитки",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/chips.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Закуски",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/kombo.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Комбо",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/cake.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  Text(
                    "Десерты",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 101,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      "assets/sous.png",
                    ),
                    color: Color.fromRGBO(255, 112, 16, 1),
                    size: 30,
                  ),
                  Text(
                    "Соусы",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.2),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(6, 6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Другое",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ImageIcon(
                    AssetImage(
                      "assets/pastga.png",
                    ),
                    color: Color.fromRGBO(165, 165, 165, 1),
                    // size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

