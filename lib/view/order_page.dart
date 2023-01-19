import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                    ),SizedBox(width: 8,),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                    ),SizedBox(width: 8,),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                    SizedBox(width: 8,),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                  border: Border.all(color: Colors.grey, width: 0.05),
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
                    SizedBox(width: 8,),
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
      ),
    );
  }
}
