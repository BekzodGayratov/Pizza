import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _TopPartState();
}

class _TopPartState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: size.height * 0.08,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Center(
                            child: Image.asset('assets/pizza.png'),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 9,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 13),
                                  child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      children: const [
                                        // icon img
                                        // text
                                        Text("Aksiya")
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  width: 10,
                                );
                              },
                              itemCount: 10))
                    ],
                  )),

//!!!

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: size.height * 0.40,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [Text("Api dan ma'lumot keladi")],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              //?LocationBar
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: size.height * 0.17,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Проверить адрес доставки",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Image.asset("assets/location.png",
                                height: 20, width: 13),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/boxsend.png",
                                  cacheHeight: 44,
                                  cacheWidth: 44,
                                )),
                            hintText: "Адрес",
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.elliptical(6.0, 6.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //!!!

              _middleText("Пицца"),

              //!!!
              SizedBox(
                  height: size.height * 0.7,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: size.height * 0.15,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Image.asset('assets/pizzaa.png'),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("""Karoche botta API 
dan malumot va product 
name keladi"""),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor:
                                              const Color(0xffFFEEE2)),
                                      child: const Text(
                                        "API narx",
                                        style: TextStyle(color: Colors.orange),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              _middleText("Суши"),

              //!!!

              SizedBox(
                  height: size.height * 0.7,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: size.height * 0.15,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Image.asset('assets/pizzaa.png'),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("""API dan malumot keladi"""),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor:
                                              const Color(0xffFFEEE2)),
                                      child: const Text(
                                        "API narx",
                                        style: TextStyle(color: Colors.orange),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),

      //**FLOATING ACTION BUTTON */

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //! ADD BUTTON PAGE
        },
        backgroundColor: const Color.fromARGB(255, 255, 112, 16),
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }

//!!!

  Padding _middleText(String categoryname) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryname,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, elevation: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/filter.png'),
                  const Text(
                    "Фильтры",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

//! Pizza order part!

Column _pizzaOrderingPage(BuildContext context) {
  return Column(children: [
    Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 32, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Напитки",
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(
            width: 100,
          ),
        ],
      ),
    ),

    //!!!!!!!!! Middle Text

    Padding(
      padding: const EdgeInsets.symmetric(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            width: 350,
            height: 100,
            child:  ReadMoreText(
              """Американская пицца — близкая родственница 
классического итальянского блюда, 
отличающаяся от него щедростью теста и 
начинки. На пышной ароматной основе 
равномерно распределяются самые свежие...""",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              trimLines: 4,
              trimMode: TrimMode.Line,
              trimCollapsedText: "Подробнее",
              trimExpandedText: "Скрить",
              moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(bottom: 32, top: 12, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Подробнее",
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    ),

    // //!!!!!!!!!!!!!!! LAST COLUMN

    Padding(
      padding: const EdgeInsets.symmetric(),
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: 607,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 0.2),
          ),
        ),
        Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 24.0, left: 22.0, bottom: 12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/pizza.png"),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text(
                        "Куда пицца",
                        style: TextStyle(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Куда пицца",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "О компании",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Пользовательское соглашение",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Условия гарантии",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Помощь",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Ресторан",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Контакты",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Поддержка",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Отследить заказ",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Контакты",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.call,
                        color: Color(0xffFF7010),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text("+7 (926) 223-10-11"),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xffFF7010),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text("Москва, ул. Юных Ленинцев, д.99"),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.facebook_outlined,
                        color: Color(0xffFF7010),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text("Facebok"),
                      const SizedBox(
                        width: 24.0,
                      ),
                      Image.asset("assets/instagram.png"),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text("Instagram")
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Divider(),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "© Copyright 2021 — Куда Пицца",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    )
  ]);
}

AppBar appbar() {
  return AppBar(
    elevation: 1,
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    title: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ImageIcon(
            AssetImage(
              "assets/pizza.png",
            ),
            color: Color.fromRGBO(255, 112, 16, 1),
            size: 32,
          ),
          const SizedBox(
            width: 19.5,
          ),
          Container(
            height: 40,
            width: 99,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/fire.png.png",
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 101,
            decoration: BoxDecoration(
              // shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/pirog.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Пицца",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 94,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/sushi.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Суши",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/cola.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Напитки",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/chips.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Закуски",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/kombo.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Комбо",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/cake.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                Text(
                  "Десерты",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 101,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/sous.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                Text(
                  "Соусы",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(6, 6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Другое",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const ImageIcon(
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
