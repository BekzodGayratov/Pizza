import 'package:flutter/material.dart';
import 'package:pizza/core/helper/mask_input_formatter.dart';
import 'package:pizza/data/model/pizza_model.dart';
import 'package:pizza/provider/home_provider.dart';
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
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context, child) => _scaffold(context),
      )
    ]);
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Your order",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // this is for list
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: _orderList()),
              _divider(),
              _promoKod(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Total: summa ",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              _divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Add to order",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                        height: MediaQuery.of(context).size.height * 0.11,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: ListTile(
                          leading:
                              Image.network(_list[index].imgUrl.toString()),
                          title: Text(_list[index].productName.toString()),
                          subtitle: Text(_list[index].sum.toString()),
                        ))),
                  ),
                ),
              ),
              _divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Sous",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                        height: MediaQuery.of(context).size.height * 0.11,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: ListTile(
                          leading:
                              Image.network(_list[index].imgUrl.toString()),
                          title: Text(_list[index].productName.toString()),
                          subtitle: Text(_list[index].sum.toString()),
                        ))),
                  ),
                ),
              ),
              _divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Personal details",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    // name
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              labelText: "Name",
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none)))),
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
                                borderSide:
                                    BorderSide(style: BorderStyle.none)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.none)))),
                    // email
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: "Email",
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none)))),
                    ),
                  ],
                ),
              ),
              _divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Delivery",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          backgroundColor:
                              context.watch<HomeProvider>().isDelivery
                                  ? Colors.orange.shade700
                                  : Colors.white),
                      onPressed: () {
                        context.read<HomeProvider>().changeState();
                      },
                      child: const Text(
                        "Delivery",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          backgroundColor:
                              context.watch<HomeProvider>().isPickUp
                                  ? Colors.orange.shade700
                                  : Colors.white),
                      onPressed: () {context.read<HomeProvider>().changeState();},
                      child: const Text(
                        "Pickup",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))
                ],
              ),
              Visibility(
                visible: context.watch<HomeProvider>().isDelivery,
                child: Text("Delivery")),
                Visibility(
                visible: context.watch<HomeProvider>().isPickUp,
                child: Text("pick up"))
            ],
          ),
        ));
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
        inputFormatters: [MaskInput().controller],
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

  Widget _orderList() {
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

  AppBar _appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: const Image(image: AssetImage("assets/images/pizza.png")),
      title: const Text(
        "Pizza",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 30,
            ))
      ],
    );
  }
}
