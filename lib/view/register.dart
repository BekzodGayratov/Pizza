
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                height: 176.0,
              ),
              const Text(
                "Вход в аккаунт",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                "Сможете быстро оформлять заказы,",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              const Text(
                "использовать бонусы",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Номер телефона",
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA5A5A5)),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "+7", border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 210.0),
                      backgroundColor: const Color(0xffFF7010)),
                  onPressed: () {},
                  child: const Text("Войти",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14.0))),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "Продолжая, вы соглашаетесь со сбором и обработкой ",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
              ),
              const Text(
                "персональных данных и пользовательским соглашением",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 234.0,)
            ],
          )),
        ]),
      ),
    );
  }
}
