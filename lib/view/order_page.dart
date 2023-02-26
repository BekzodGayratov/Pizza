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
      appBar: appBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            _pitsaVSFilter(),
            SizedBox(
              height: 12,
            ),
            birinchiPizzaContainer(),
            SizedBox(
              height: 12,
            ),
            ikkinchiPizzaContainer(),
            SizedBox(
              height: 12,
            ),
            uchunchiPizzaContainer(),
            SizedBox(
              height: 12,
            ),
            turtinchiPizzaContainer(),
            SizedBox(
              height: 12,
            ),
            beshinchiPizzaContainer()
          ],
        ),
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
                    heightFactor: 0.8,
                    child: Column(
                      children: [
                        Center(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 110),
                                child: Text(
                                  "Пепперони по-деревенски",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              sheetPizzaContainer1(),
                              SizedBox(
                                height: 20,
                              ),
                              sheetPizzaContainer2(),
                              SizedBox(
                                height: 20,
                              ),
                              sheetPizzaContainer3(),
                              SizedBox(
                                height: 20,
                              ),
                              sheetPizzaContainer4(),
                              SizedBox(
                                height: 45,
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Итого: 379 ₽",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(255, 112, 16, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:76,
                                  ),
                                  Container(
                                    width: 160,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 112, 16, 1),
                                      border: Border.all(
                                          color:
                                              Color.fromRGBO(255, 112, 16, 1),
                                          width: 0.2),
                                      borderRadius: BorderRadius.all(
                                        Radius.elliptical(12, 12),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Оформить заказ",
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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

  Padding sheetPizzaContainer4() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 108,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/4seasonPizza.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 145),
                    child: Text(
                      "4 сезона",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Text(
                      "Традиционное тесто, 23 см",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 92,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "-",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "1",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "+",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 72,
            left: 296,
            child: Text(
              "630 ₽",
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 112, 16, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding sheetPizzaContainer3() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 108,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/easyPizza2.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "EASY PEASY чикен а-ля хрен",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Text(
                      "Традиционное тесто, 23 см",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 92,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "-",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "1",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "+",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 72,
            left: 296,
            child: Text(
              "249 ₽",
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 112, 16, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding sheetPizzaContainer2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 108,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/easyPizza.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "EASY PEASY огуречный раско...",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Text(
                      "Традиционное тесто, 23 см",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 92,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "-",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "1",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "+",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 72,
            left: 296,
            child: Text(
              "549 ₽",
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 112, 16, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding sheetPizzaContainer1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 108,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/chikenPizza.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 65),
                    child: Text(
                      "Чикен Сладкий Чили",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Text(
                      "Традиционное тесто, 23 см",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 92,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "-",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "1",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          Text(
                            "+",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 72,
            left: 296,
            child: Text(
              "499 ₽",
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 112, 16, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding birinchiPizzaContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 124,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.green, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/chikenPizza.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 65),
                    child: Text(
                      "Чикен Сладкий Чили",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Курица, Лук, Перец Халапеньо, Сыр",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "Моцарелла, Томатный соус, Соус...",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 93,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Center(
                        child: Text(
                          "от 499 ₽",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 112, 16, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: 8,
            child: Container(
              width: 44,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  color: Colors.red),
              child: Center(
                child: Text(
                  "NEW",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding beshinchiPizzaContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 124,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/CheesePizza.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 75),
                    child: Text(
                      "Сырная с ветчиной",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "Ветчина, Сыр Моцарелла,",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 115),
                    child: Text(
                      "Томатный соус",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 93,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Center(
                        child: Text(
                          "от 499 ₽",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 112, 16, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding turtinchiPizzaContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 124,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/4seasonPizza.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 145),
                    child: Text(
                      "4 сезона",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "Бекон, Ветчина, Грибы, Курица, ",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Лук, Маслины, Огурцы маринован...",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 93,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Center(
                        child: Text(
                          "от 499 ₽",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 112, 16, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding uchunchiPizzaContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 124,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/easyPizza2.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "EASY PEASY чикен а-ля хрен",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Курица, Лук, Соус Карбонара, Сыр",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "Моцарелла, Чипсы EASY PEASY...",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 93,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Center(
                        child: Text(
                          "от 499 ₽",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 112, 16, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding ikkinchiPizzaContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            width: 350,
            height: 124,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(12, 12),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/easyPizza.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 42),
                    child: Text(
                      "EASY PEASY огуречный",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 135),
                    child: Text(
                      "расколбас",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Огурцы маринованные, Пепперон...",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Container(
                      width: 93,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(6, 6),
                        ),
                        color: Color.fromRGBO(255, 238, 226, 1),
                      ),
                      child: Center(
                        child: Text(
                          "от 499 ₽",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 112, 16, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: 8,
            child: Container(
              width: 44,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  color: Colors.red),
              child: Center(
                child: Text(
                  "ХИТ",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _pitsaVSFilter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Пицца",
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Container(
          height: 32,
          width: 106,
          decoration: BoxDecoration(
            color: Colors.white,
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
                  "assets/filter.png",
                ),
                color: Color.fromRGBO(255, 112, 16, 1),
                size: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Фильтры",
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
      ],
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
