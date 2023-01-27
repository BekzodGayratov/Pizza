import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_outlined))
        ],
        leading: Image.asset("assets/pizza.png"),
        title: const Text(
          "Куда пицца",
          style: TextStyle(
            color: Color.fromRGBO(25, 25, 25, 1),
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 139.0,
              ),
              Image.asset("assets/kuryer.png"),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Заказ №310202 принят",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                "Спасибо за заказ!",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              const Text(
                "Примерное время доставки 45 минут. Статус",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              const Text(
                "отследить можно нажав на кнопку ниже",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 24.0),
                      backgroundColor: const Color(0xffFF7010)),
                  onPressed: () {},
                  child: const Text("Отследить заказ",
                      style: TextStyle(fontWeight: FontWeight.w400)))
            ],
          )),
          const SizedBox(height: 250.0),
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 607.0,
            child: Padding(
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
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
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
                      Image.asset("assets/Vector.png"),
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
            ),
          ),
        ]),
      ),
    );
  }
}
  