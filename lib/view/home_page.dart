import 'package:flutter/material.dart';
import 'package:pizza/data/model/pizza_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        "https://www.pngfind.com/pngs/m/398-3988664_true-greek-goodness-california-style-pizza-hd-png.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        title: const Text("Pizza"),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListTile(
                title: Text(_list[index].productName.toString()),
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(_list[index].imgUrl.toString()),fit: BoxFit.fill)),
                ),
              ));
        },
      ),
    );
  }
}
