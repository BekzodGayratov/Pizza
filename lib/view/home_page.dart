import 'package:flutter/material.dart';
import 'package:pizza/core/helper/mask_input_formatter.dart';
import 'package:pizza/provider/basket_provider.dart';
import 'package:provider/provider.dart';

import '../core/widgets/divider_widget.dart';
import '../core/widgets/text_form_field_widget.dart';
import '../core/widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    BasketProvider providerWatch = context.watch<BasketProvider>();
    BasketProvider providerRead = context.read<BasketProvider>();
    return ChangeNotifierProvider(
      create: (context) => BasketProvider(),
      builder: (context, child) {
        return Scaffold(
            backgroundColor: const Color(0xffE5E5E5),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    text("Ваш заказ", 18.0, Colors.black,
                        MainAxisAlignment.start),
                    // this is for list
                    SizedBox(
                        height: size.height * 0.7,
                        width: size.width,
                        child: _orderList()),
                    divider(),
                    _promoKod(),
                    text("Итого:", 20.0, Colors.orange,
                        MainAxisAlignment.center),
                    divider(),
                    text("Добавить к заказу?", 18.0, Colors.black,
                        MainAxisAlignment.start),
                    SizedBox(
                      height: size.height * 0.13,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                                  height: size.height * 0.11,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: ListTile(
                                    /* leading: Image.network(
                                        _list[index].imgUrl.toString())*/
                                    title: Text(""),
                                    subtitle: Text(""),
                                  ))),
                        ),
                      ),
                    ),
                    divider(),
                    text("Соусы", 18.0, Colors.black, MainAxisAlignment.start),
                    //   FOR SOUS
                    SizedBox(
                      height: size.height * 0.13,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                                  height: size.height * 0.11,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: ListTile(
                                    /*leading: Image.network(
                                        _list[index].imgUrl.toString())*/
                                    title: Text(""),
                                    subtitle: Text(""),
                                  ))),
                        ),
                      ),
                    ),
                    divider(),
                    text("Личние данные", 18.0, Colors.black,
                        MainAxisAlignment.start),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          // name
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: textFormField(TextInputType.name, "Имя", "",
                                Colors.white, providerWatch.userNameController),
                          ),
                          // phone number
                          TextFormField(
                              inputFormatters: [MaskInput().phoneController],
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                  hintText: "+998",
                                  labelText: "Номер телефона",
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(style: BorderStyle.none)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          style: BorderStyle.none)))),
                          // email
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: textFormField(
                                  TextInputType.emailAddress,
                                  "Почта",
                                  "",
                                  Colors.white,
                                  providerWatch.emailController)),
                        ],
                      ),
                    ),
                    divider(),
                    text("Доставка", 18.0, Colors.black,
                        MainAxisAlignment.start),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  backgroundColor: providerWatch.isDelivery
                                      ? Colors.orange.shade700
                                      : Colors.white),
                              onPressed: () {
                                providerRead.changeState();
                              },
                              child: const Text(
                                "Доставка",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  backgroundColor: providerWatch.isPickUp
                                      ? Colors.orange.shade700
                                      : Colors.white),
                              onPressed: () {
                                providerRead.changeState();
                              },
                              child: const Text(
                                "Самовызов",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ))
                        ],
                      ),
                    ),
                    Visibility(
                        visible: providerWatch.isDelivery,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width: size.width * 0.65,
                                      child: textFormField(
                                          TextInputType.streetAddress,
                                          "Улица",
                                          "Пушкина",
                                          Colors.white,
                                          providerWatch.streetNameController)),
                                  SizedBox(
                                      width: size.width * 0.2,
                                      child: textFormField(
                                          TextInputType.text,
                                          "Дом",
                                          "1A",
                                          Colors.white,
                                          providerWatch.homeNameController))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width: size.width * 0.45,
                                      child: textFormField(
                                          TextInputType.number,
                                          "Подъезд",
                                          "1",
                                          Colors.white,
                                          providerWatch.entranceNumController)),
                                  SizedBox(
                                      width: size.width * 0.4,
                                      child: textFormField(
                                          TextInputType.number,
                                          "Етаж",
                                          "2",
                                          Colors.white,
                                          providerWatch.floorNumController))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width: size.width * 0.43,
                                      child: textFormField(
                                          TextInputType.number,
                                          "Квартира",
                                          "3",
                                          Colors.white,
                                          providerWatch
                                              .apartmentNumController)),
                                  SizedBox(
                                      width: size.width * 0.43,
                                      child: textFormField(
                                          TextInputType.number,
                                          "Домофон",
                                          "0000",
                                          Colors.white,
                                          providerWatch.intercomNumController))
                                ],
                              ),
                            ),
                          ],
                        )),
                    Visibility(
                        visible: providerWatch.isPickUp,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                  width: size.width * 0.9,
                                  child: textFormField(
                                      TextInputType.name,
                                      "Ресторан",
                                      "Выберите ресторан",
                                      Colors.white,
                                      providerWatch.restaurantNameController)),
                            )
                          ],
                        )),
                    text("На когда приготовить", 15.0, Colors.black38,
                        MainAxisAlignment.start),
                    _checkBox(providerWatch.isFast, () {
                      providerRead.changeDeleverytime();
                    }, "Как можно скорее"),
                    _checkBox(providerWatch.inTime, () {
                      providerRead.changeDeleverytime();
                    }, "По времени"),
                    divider(),
                    text("Оплата", 18.0, Colors.black, MainAxisAlignment.start),
                    _checkBox(providerWatch.isCash, () {
                      providerRead.changeToCash();
                    }, "Наличными"),
                    _checkBox(providerWatch.isCard, () {
                      providerRead.changetoCard();
                    }, "Картой"),
                    _checkBox(providerWatch.isApplePay, () {
                      providerRead.changeToApplePay();
                    }, "Apple Pay"),
                    divider(),
                    text("Сдача", 18.0, Colors.black, MainAxisAlignment.start),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        child: textFormField(TextInputType.number, "", "0",
                            Colors.white, providerWatch.changeNumController)),
                    text("Комментарий", 18.0, Colors.black,
                        MainAxisAlignment.start),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        maxLines: 5,
                        decoration: const InputDecoration(
                          hintText: "Есть уточнения?",
                          contentPadding: EdgeInsets.only(
                              bottom: 100, top: 5, left: 5, right: 5),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        height: size.height * 0.08,
                        color: Colors.white,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            text("Итого: ", 19.0, Colors.orange,
                                MainAxisAlignment.start),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text("Оформить зказ"),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }

  ListTile _checkBox(bool value, void Function() fun, String text) {
    return ListTile(
      onTap: () {
        fun();
      },
      title: Text(text),
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: value
            ? const Icon(
                Icons.check_box_outlined,
                size: 30,
                color: Colors.orange,
              )
            : const Icon(
                Icons.check_box_outline_blank,
                size: 30.0,
                color: Colors.orange,
              ),
      ),
    );
  }

  Padding _promoKod() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        inputFormatters: [MaskInput().promocodController],
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
            hintText: "Promokod",
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none))),
      ),
    );
  }

  ListView _orderList() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                title: const Text(""),
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.20,
                  decoration: const BoxDecoration(
                      /*image: DecorationImage(
                          image: NetworkImage(_list[index].imgUrl.toString()),
                          fit: BoxFit.fill)*/
                      ),
                ),
              )),
        );
      },
    );
  }
}
