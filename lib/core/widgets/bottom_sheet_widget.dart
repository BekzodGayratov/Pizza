import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showMyBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      elevation: 500,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child:

              //! All
              SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 24),
                      child: Text(
                        "Общее",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 12, right: 8),
                          child: Container(
                            width: 53,
                            height: 36,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 112, 16),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Center(
                              child: Text(
                                "Хит",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 83,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Новинка",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 83,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Новинка",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!! 4

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 83,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "С мясом",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //????? Second Row

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 127,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Вегетарианская",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 94,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "С курицей",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 83,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Без лука",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //!!!!!!!

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 95,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "С грибами",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 146,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "С морепродуктами",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 91,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Барбекью",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //!!!! Second Column

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 24),
                      child: Text(
                        "Сыр",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 12, right: 8),
                          child: Container(
                            width: 98,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Реджанито",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 100,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Моцарелла",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 77,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Чеддер",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //????? Second Row

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 153,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "С голубой плесенью",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 188,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Смесь итальянских сыров",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //!!!!!!!

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 158,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Мягкий молодой сыр",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //!!!! Third Column

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 24),
                      child: Text(
                        "Мясо",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 12, right: 8),
                          child: Container(
                            width: 98,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Пепперони",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 83,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Свинина",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 81,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Ветчина",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //????? Second Row

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 68,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Бекон",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 87,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Говядина",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 76,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Чоризо",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //!!!!!!!

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 88,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Колбаски",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 124,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Куриная грудка",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //!Fourth Column

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 24),
                      child: Text(
                        "Компонент",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 12, right: 8),
                          child: Container(
                            width: 88,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Креветка",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 84,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Ананасы",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 8),
                          child: Container(
                            width: 111,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Шампиньоны",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //????? Second Row

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 54,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Лук",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 135,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Перец халапеньо",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!! 3

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 82,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Орегано",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //!!!!!!!

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 124,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Зеленый перец",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 77,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Томаты",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 75,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Чеснок",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //!!!!!!

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 8, right: 8),
                          child: Container(
                            width: 123,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Красный перец",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 76,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Оливки",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!

                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Container(
                            width: 87,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Маслины",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //!!!!!!

                    Row(
                      children: [
                        //!!!!!!! 1

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 8, right: 8, bottom: 24),
                          child: Container(
                            width: 88,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Клубника",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!!!!!! 2

                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8, bottom: 24, top: 8),
                          child: Container(
                            width: 178,
                            height: 36,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Смесь итальянских трав",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //!!!!! SECOND COLUMN

                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, right: 20, bottom: 12, left: 20),
                          child: Container(
                            width: 165,
                            height: 44,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 112, 16),
                                  width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(6, 6),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Сбросить",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 255, 112, 16),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!!!

                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, right: 20, bottom: 12),
                          child: Container(
                            width: 165,
                            height: 44,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.2),
                                borderRadius: const BorderRadius.all(
                                  Radius.elliptical(6, 6),
                                ),
                                color: const Color.fromARGB(255, 255, 112, 16)),
                            child: Center(
                              child: Text(
                                "Применить",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      });
}
