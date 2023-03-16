import 'package:flutter/material.dart';
import 'package:pizza/core/helper/mask_input_formatter.dart';
import 'package:pizza/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import '../core/widgets/divider_widget.dart';
import '../core/widgets/text_form_field_widget.dart';
import '../core/widgets/text_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _HomePageState();
}

class _HomePageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CartProvider provider = Provider.of<CartProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      builder: (context, child) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              iconTheme: const IconThemeData(color: Colors.black),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.menu_outlined))
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
            backgroundColor: const Color(0xffE5E5E5),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Ваш заказ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    // this is for list
                    SizedBox(
                        height: size.height * 0.7,
                        width: size.width,
                        child: _orderList(size)),
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
                                Colors.white, provider.userNameController),
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
                                  provider.emailController)),
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
                                  backgroundColor: provider.isDelivery
                                      ? Colors.orange.shade700
                                      : Colors.white),
                              onPressed: () {
                                provider.changeState();
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
                                  backgroundColor: provider.isPickUp
                                      ? Colors.orange.shade700
                                      : Colors.white),
                              onPressed: () {
                                provider.changeState();
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
                        visible: provider.isDelivery,
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
                                          provider.streetNameController)),
                                  SizedBox(
                                      width: size.width * 0.2,
                                      child: textFormField(
                                          TextInputType.text,
                                          "Дом",
                                          "1A",
                                          Colors.white,
                                          provider.homeNameController))
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
                                          provider.entranceNumController)),
                                  SizedBox(
                                      width: size.width * 0.4,
                                      child: textFormField(
                                          TextInputType.number,
                                          "Етаж",
                                          "2",
                                          Colors.white,
                                          provider.floorNumController))
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
                                          provider.apartmentNumController)),
                                  SizedBox(
                                      width: size.width * 0.43,
                                      child: textFormField(
                                          TextInputType.number,
                                          "Домофон",
                                          "0000",
                                          Colors.white,
                                          provider.intercomNumController))
                                ],
                              ),
                            ),
                          ],
                        )),
                    Visibility(
                        visible: provider.isPickUp,
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
                                      provider.restaurantNameController)),
                            )
                          ],
                        )),
                    text("На когда приготовить", 15.0, Colors.black38,
                        MainAxisAlignment.start),
                    _checkBox(provider.isFast, () {
                      provider.changeDeleverytime();
                    }, "Как можно скорее"),
                    _checkBox(provider.inTime, () {
                      provider.changeDeleverytime();
                    }, "По времени"),
                    divider(),
                    text("Оплата", 18.0, Colors.black, MainAxisAlignment.start),
                    _checkBox(provider.isCash, () {
                      provider.changeToCash();
                    }, "Наличными"),
                    _checkBox(provider.isCard, () {
                      provider.changetoCard();
                    }, "Картой"),
                    _checkBox(provider.isApplePay, () {
                      provider.changeToApplePay();
                    }, "Apple Pay"),
                    divider(),
                    text("Сдача", 18.0, Colors.black, MainAxisAlignment.start),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        child: textFormField(TextInputType.number, "", "0",
                            Colors.white, provider.changeNumController)),
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

  ListView _orderList(Size size) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: size.height * 0.15,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                const Text("Api RASM"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: const Text(
                        """Karoche botta API 
                    dan malumot va product 
                    name keladiii""",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: size.height * 0.04,
                          width: size.width * 0.3,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove,color: Colors.orange,)),
                              const Text("1",style: TextStyle(color: Colors.orange),),
                              IconButton(
                                  onPressed: () {}, icon: const Icon(Icons.add,color: Colors.orange,))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                          width: size.width * 0.2,
                          
                          child: const Text("IP NARX",style: TextStyle(color: Colors.orange),),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}