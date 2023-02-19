import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return _scaffold();
  }

  Scaffold _scaffold() {
    return Scaffold(
      // appBar: _appBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/location.png"),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Москва",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Среднее время доставки*:",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        "00:24:19",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/pizza.png"),
                  Image.asset("assets/menu.png"),
                ],
              ),
            ),
            const Divider(),
            // _appbar
            _appBar(),
            // _appbar
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 20.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 30.0, left: 10.0, right: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset("assets/group2.png"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Container(
                child: Column(
                  children: [
                    const Text(
                      "Проверить адрес доставки",
                      style: TextStyle(
                        color: Color(0xff191919),
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(color: Colors.grey, width: 0.2),
                    //     borderRadius: const BorderRadius.all(
                    //       Radius.elliptical(10.0, 10.0),
                    //     ),
                    //   ),
                    //   child: TextFormField(),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Пицца",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28.0,
                              color: Color.fromRGBO(25, 25, 25, 1),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(10.0, 10.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/Filter.png"),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Фильтры",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.0,
                                        color: Color.fromRGBO(25, 25, 25, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 193, 193, 193),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(12.0, 12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/Rectangle 4.png"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          "Чикен Сладкий Чили",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10.0,widget
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                          "Курица, Лук, Перец Халапеньо, Сыр \n Моцарелла, Томатный соус, Соус...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    255, 238, 226, 1),
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      255, 238, 226, 1),
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.elliptical(6.0, 6.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16.0,
                                                    vertical: 7.0),
                                                child: Text(
                                                  "от 499 ₽",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 112, 16, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "от 699 ₽",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0,
                                              color: Color.fromRGBO(
                                                  165, 165, 165, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 193, 193, 193),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(12.0, 12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/Rectangle 4.png"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          "Чикен Сладкий Чили",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10.0,widget
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                          "Курица, Лук, Перец Халапеньо, Сыр \n Моцарелла, Томатный соус, Соус...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    255, 238, 226, 1),
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      255, 238, 226, 1),
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.elliptical(6.0, 6.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16.0,
                                                    vertical: 7.0),
                                                child: Text(
                                                  "от 499 ₽",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 112, 16, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "от 699 ₽",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0,
                                              color: Color.fromRGBO(
                                                  165, 165, 165, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 193, 193, 193),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(12.0, 12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/Rectangle 4.png"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          "Чикен Сладкий Чили",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10.0,widget
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                          "Курица, Лук, Перец Халапеньо, Сыр \n Моцарелла, Томатный соус, Соус...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    255, 238, 226, 1),
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      255, 238, 226, 1),
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.elliptical(6.0, 6.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16.0,
                                                    vertical: 7.0),
                                                child: Text(
                                                  "от 499 ₽",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 112, 16, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "от 699 ₽",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0,
                                              color: Color.fromRGBO(
                                                  165, 165, 165, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 193, 193, 193),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(12.0, 12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/Rectangle 4.png"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          "Чикен Сладкий Чили",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10.0,widget
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                          "Курица, Лук, Перец Халапеньо, Сыр \n Моцарелла, Томатный соус, Соус...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    255, 238, 226, 1),
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      255, 238, 226, 1),
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.elliptical(6.0, 6.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16.0,
                                                    vertical: 7.0),
                                                child: Text(
                                                  "от 499 ₽",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 112, 16, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "от 699 ₽",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0,
                                              color: Color.fromRGBO(
                                                  165, 165, 165, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 193, 193, 193),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(12.0, 12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/Rectangle 4.png"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          "Чикен Сладкий Чили",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10.0,widget
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                          "Курица, Лук, Перец Халапеньо, Сыр \n Моцарелла, Томатный соус, Соус...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    255, 238, 226, 1),
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      255, 238, 226, 1),
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.elliptical(6.0, 6.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16.0,
                                                    vertical: 7.0),
                                                child: Text(
                                                  "от 499 ₽",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 112, 16, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "от 699 ₽",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0,
                                              color: Color.fromRGBO(
                                                  165, 165, 165, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 193, 193, 193),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.elliptical(12.0, 12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/Rectangle 4.png"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          "Чикен Сладкий Чили",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10.0,widget
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                          "Курица, Лук, Перец Халапеньо, Сыр \n Моцарелла, Томатный соус, Соус...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromRGBO(25, 25, 25, 1),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    255, 238, 226, 1),
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      255, 238, 226, 1),
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.elliptical(6.0, 6.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16.0,
                                                    vertical: 7.0),
                                                child: Text(
                                                  "от 499 ₽",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 112, 16, 1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "от 699 ₽",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.0,
                                              color: Color.fromRGBO(
                                                  165, 165, 165, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar _appBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                    "assets/Vector.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Акции",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(226, 53, 53, 1),
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
              // shape: BoxShape.rectangle,
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
                    "assets/Pizza.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Пицца",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/Sushi.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Суши",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/Drink.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Напитки",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/Snacks.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Закуски",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/Combo.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Комбо",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/Dessert.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                Text(
                  "Десерты",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/Sauce.png",
                  ),
                  color: Color.fromRGBO(255, 112, 16, 1),
                  size: 30,
                ),
                Text(
                  "Соусы",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    ),
  );
}
