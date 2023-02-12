import 'package:flutter/material.dart';
import 'package:pizza/core/helper/mask_input_formatter.dart';
import 'package:pizza/data/model/pizza_model.dart';
import 'package:pizza/provider/basket_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Sample for model of data
  static final List<MyModel> _list = [
    MyModel("Neapolitan Pizza", 16,
        "https://w7.pngwing.com/pngs/253/72/png-transparent-neapolitan-pizza-neapolitan-cuisine-italian-cuisine-pizza-margherita-tomato-pizza-food-recipe-sicilian-pizza.png"),
    MyModel("Chicago Pizza", 11,
        "https://e7.pngegg.com/pngimages/1/527/png-clipart-chicago-style-pizza-daramar-s-pizza-restaurant-domino-s-pizza-pizza-food-recipe.png"),
    MyModel("New York-Style Pizza", 18,
        "https://img.favpng.com/6/16/7/new-york-style-pizza-italian-cuisine-take-out-st-louis-style-pizza-png-favpng-qA7CHA00wASZpCD6EymAScQwZ.jpg"),
    MyModel("Sicilian Pizza", 20,
        "https://images.squarespace-cdn.com/content/v1/5c6344ceab1a621d954f6a13/a384f434-3b22-491d-aa1f-4c784f8d7385/sicilian-cheese-pizza.jpg"),
    MyModel("Greek Pizza", 15,
        "https://www.pngfind.com/pngs/m/398-3988664_true-greek-goodness-california-style-pizza-hd-png.png"),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    BasketProvider providerWatch = context.watch<BasketProvider>();
    BasketProvider providerRead = context.read<BasketProvider>();
    return ChangeNotifierProvider(create: (context) => BasketProvider(),builder: (context, child) {
      return Scaffold(
              backgroundColor: const Color(0xffE5E5E5),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _text("Your order", 18.0, Colors.black,
                          MainAxisAlignment.start),
                      // this is for list
                      SizedBox(
                          height: size.height * 0.7,
                          width: size.width,
                          child: _orderList()),
                      _divider(),
                      _promoKod(),
                      _text("Total: summa", 20.0, Colors.orange,
                          MainAxisAlignment.center),
                      _divider(),
                      _text("Add to order", 18.0, Colors.black,
                          MainAxisAlignment.start),

                      // FOR ADDTIONAL
                      SizedBox(
                        height: size.height * 0.13,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 10,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: _list.length,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                                    height: size.height * 0.11,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                        child: ListTile(
                                      leading: Image.network(
                                          _list[index].imgUrl.toString()),
                                      title: Text(
                                          _list[index].productName.toString()),
                                      subtitle:
                                          Text(_list[index].sum.toString()),
                                    ))),
                          ),
                        ),
                      ),
                      _divider(),
                      _text(
                          "Sous", 18.0, Colors.black, MainAxisAlignment.start),

                      //   FOR SOUS
                      SizedBox(
                        height: size.height * 0.13,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 10,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: _list.length,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                                    height: size.height * 0.11,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                        child: ListTile(
                                      leading: Image.network(
                                          _list[index].imgUrl.toString()),
                                      title: Text(
                                          _list[index].productName.toString()),
                                      subtitle:
                                          Text(_list[index].sum.toString()),
                                    ))),
                          ),
                        ),
                      ),
                      _divider(),
                      _text("Personal details", 18.0, Colors.black,
                          MainAxisAlignment.start),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            // name
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: _textFormField(
                                  TextInputType.name, "Name", "", Colors.white,providerWatch.userNameController),
                            ),
                            // phone number
                            TextFormField(
                                inputFormatters: [MaskInput().phoneController],
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                    hintText: "+998",
                                    labelText: "Phone",
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            style: BorderStyle.none)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            style: BorderStyle.none)))),
                            // email
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: _textFormField(
                                    TextInputType.emailAddress,
                                    "Email",
                                    "",
                                    Colors.white,providerWatch.emailController)),
                          ],
                        ),
                      ),
                      _divider(),
                      _text("Delivery", 18.0, Colors.black,
                          MainAxisAlignment.start),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  backgroundColor: providerWatch.isDelivery
                                      ? Colors.orange.shade700
                                      : Colors.white),
                              onPressed: () {
                                providerRead.changeState();
                              },
                              child: const Text(
                                "Delivery",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  backgroundColor: providerWatch.isPickUp
                                      ? Colors.orange.shade700
                                      : Colors.white),
                              onPressed: () {
                                providerRead.changeState();
                              },
                              child: const Text(
                                "Pickup",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ))
                        ],
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
                                        child: _textFormField(
                                            TextInputType.streetAddress,
                                            "Street",
                                            "Broadway",
                                            Colors.white,providerWatch.streetNameController)),
                                    SizedBox(
                                        width: size.width * 0.2,
                                        child: _textFormField(
                                            TextInputType.text,
                                            "Home",
                                            "1A",
                                            Colors.white,providerWatch.homeNameController))
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
                                        child: _textFormField(
                                            TextInputType.number,
                                            "Entrance",
                                            "1",
                                            Colors.white,providerWatch.entranceNumController)),
                                    SizedBox(
                                        width: size.width * 0.4,
                                        child: _textFormField(
                                            TextInputType.number,
                                            "Floor",
                                            "2",
                                            Colors.white,providerWatch.floorNumController))
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
                                        child: _textFormField(
                                            TextInputType.number,
                                            "Apartment",
                                            "3",
                                            Colors.white,providerWatch.apartmentNumController)),
                                    SizedBox(
                                        width: size.width * 0.43,
                                        child: _textFormField(
                                            TextInputType.number,
                                            "Intercom",
                                            "0000",
                                            Colors.white,providerWatch.intercomNumController))
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Visibility(
                          visible: providerWatch.isPickUp,
                          child: Column(
                            children: const [
                              Text("Pick up"),
                            ],
                          )),
                    _text("Payment", 18.0, Colors.black, MainAxisAlignment.start)
                    ],
                  ),
                ),
              ));
    },);
  }

  TextFormField _textFormField(TextInputType keyboardType, String labelText,
      String hintText, Color fillColor, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          fillColor: fillColor,
          filled: true,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none))),
    );
  }

  Padding _text(
      String text, double fontSize, Color color, MainAxisAlignment alignment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: fontSize, color: color, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Padding _divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Divider(
        thickness: 2,
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
      itemExtent: 120,
      itemCount: _list.length,
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
                title: Text(_list[index].productName.toString()),
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(_list[index].imgUrl.toString()),
                          fit: BoxFit.fill)),
                ),
              )),
        );
      },
    );
  }
}
