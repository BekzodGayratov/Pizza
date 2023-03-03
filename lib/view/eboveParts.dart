import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboveParts extends StatelessWidget {
  const AboveParts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        _pizzaVaFilter(),
        SizedBox(
          height: 12,
        ),
        _birinchiPizzaContainer(),
        SizedBox(
          height: 12,
        ),
        _ikkinchiPizzaContainer(),
        SizedBox(
          height: 12,
        ),
        _uchunchiPizzaContainer(),
        SizedBox(
          height: 12,
        ),
        _tortinchiPizzaContainer(),
        SizedBox(
          height: 12,
        ),
        _beshinchiPizzaContainer()
      ],
    );
  }

  Padding _beshinchiPizzaContainer() {
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12),
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

  Padding _tortinchiPizzaContainer() {
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12),
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

  Padding _uchunchiPizzaContainer() {
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12),
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

  Padding _ikkinchiPizzaContainer() {
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12),
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

  Padding _birinchiPizzaContainer() {
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12),
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

  Row _pizzaVaFilter() {
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
}
