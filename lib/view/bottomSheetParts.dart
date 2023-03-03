import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza/provider/4chi_counter_provider.dart';
import 'package:pizza/view/eboveParts.dart';
import 'package:provider/provider.dart';

import '../provider/1chi_counter_provider.dart';
import '../provider/2chi_counter_provider.dart';
import '../provider/3chi_counter_provider.dart';

class BottomSheetParts extends StatelessWidget {
  const BottomSheetParts({
    super.key,
    required this.chickenSladkiPrice,
    required this.easyBirPrice,
    required this.easyIkkiPrice,
    required this.fourSeasonPrice,
  });

  final int chickenSladkiPrice;
  final int easyBirPrice;
  final int easyIkkiPrice;
  final int fourSeasonPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              _birinchiBottomSheetContainer(context),
              SizedBox(
                height: 20,
              ),
              _ikkinchiBottomSheetContainer(context),
              SizedBox(
                height: 20,
              ),
              _uchunchiBottomSheetContainer(context),
              SizedBox(
                height: 20,
              ),
              _tortinchiBottomSheetContainer(context),
              SizedBox(
                height: 70,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Итого: ${chickenSladkiPrice * context.watch<FirstCounterProvider>().countValue + easyBirPrice * context.watch<SecondCounterProvider>().countValue + easyIkkiPrice * context.watch<ThirdCounterProvider>().countValue + fourSeasonPrice * context.watch<FourthCounterProvider>().countValue} ₽",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 112, 16, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 76,
                  ),
                  Container(
                    width: 160,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 112, 16, 1),
                      border: Border.all(
                          color: Color.fromRGBO(255, 112, 16, 1), width: 0.2),
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
    );
  }

  Padding _birinchiBottomSheetContainer(BuildContext context) {
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
                          InkWell(
                            onTap: context
                                .read<FirstCounterProvider>()
                                .disscrement,
                            child: Text(
                              "-",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            context
                                .watch<FirstCounterProvider>()
                                .countValue
                                .toString(),
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: context.read<FirstCounterProvider>().add,
                            child: Text(
                              "+",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
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
              "${chickenSladkiPrice * context.watch<FirstCounterProvider>().countValue} ₽",
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

  Padding _ikkinchiBottomSheetContainer(BuildContext context) {
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
                          InkWell(
                            onTap: context
                                .read<SecondCounterProvider>()
                                .disscrement,
                            child: Text(
                              "-",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            context
                                .watch<SecondCounterProvider>()
                                .countValue
                                .toString(),
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: context.read<SecondCounterProvider>().add,
                            child: Text(
                              "+",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
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
              "${easyBirPrice * context.watch<SecondCounterProvider>().countValue} ₽",
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

  Padding _uchunchiBottomSheetContainer(BuildContext context) {
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
                          InkWell(
                            onTap: context
                                .read<ThirdCounterProvider>()
                                .disscrement,
                            child: Text(
                              "-",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            context
                                .watch<ThirdCounterProvider>()
                                .countValue
                                .toString(),
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: context.read<ThirdCounterProvider>().add,
                            child: Text(
                              "+",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
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
              "${easyIkkiPrice * context.watch<ThirdCounterProvider>().countValue} ₽",
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

  Padding _tortinchiBottomSheetContainer(BuildContext context) {
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
                          InkWell(
                            onTap: context
                                .read<FourthCounterProvider>()
                                .disscrement,
                            child: Text(
                              "-",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            context
                                .watch<FourthCounterProvider>()
                                .countValue
                                .toString(),
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 112, 16, 1),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: context.read<FourthCounterProvider>().add,
                            child: Text(
                              "+",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 112, 16, 1),
                                ),
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
              "${fourSeasonPrice * context.watch<FourthCounterProvider>().countValue} ₽",
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
}
