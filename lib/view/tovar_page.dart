import 'package:flutter/material.dart';
import 'package:pizza/provider/tovar_provider.dart';
import 'package:provider/provider.dart';

class PitsaPage extends StatefulWidget {
  const PitsaPage({super.key});

  @override
  State<PitsaPage> createState() => _PitsaPageState();
}

class _PitsaPageState extends State<PitsaPage> {
  @override
  Widget build(BuildContext context) {
   

    return ChangeNotifierProvider(
      create: (context) => TovarProvider(),
      builder: (context, child) {
        return _scaffold(context);
      },
    );
    ;
  }

  Scaffold _scaffold(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.001),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 69,
                        height: 32,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(6),
                                topRight: Radius.circular(6))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "NEW",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 260,
                        height: 260,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/pizza.png"),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: InkWell(
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/ellipse.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Image.asset(
                            "assets/vector.png",
                            height: 24,
                            width: 18,
                          ),
                        ),
                         Padding(
                          padding:const EdgeInsets.only(left: 11.0, top: 13.0),
                          child: Text(
                            "Пепперони по-деревенски",
                            style: TextStyle(
                              fontSize: width*0.03,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Card(
                          child: IconButton(
                            onPressed: () {
                              context.read<TovarProvider>().burnOut(0);
                            },
                            icon: Image.asset("assets/pishloq1.png",
                                fit: BoxFit.fill,
                                color:
                                    context.watch<TovarProvider>().isLoading[0]
                                        ? const Color(0xffFF7010)
                                        : Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Card(
                            child: IconButton(
                              onPressed: () {
                                context.read<TovarProvider>().burnOut(1);
                              },
                              icon: Image.asset("assets/vecctor.png",
                                  fit: BoxFit.fill,
                                  color: context
                                          .watch<TovarProvider>()
                                          .isLoading[1]
                                      ? const Color(0xffFF7010)
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Card(
                          child: IconButton(
                            onPressed: () {
                              context.read<TovarProvider>().burnOut(2);
                            },
                            icon: Image.asset("assets/kalso.png",
                                fit: BoxFit.fill,
                                color:
                                    context.watch<TovarProvider>().isLoading[2]
                                        ? const Color(0xffFF7010)
                                        : Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Card(
                            child: IconButton(
                              onPressed: () {
                                context.read<TovarProvider>().burnOut(3);
                              },
                              icon: Image.asset("assets/chiroq.png",
                                  fit: BoxFit.fill,
                                  color: context
                                          .watch<TovarProvider>()
                                          .isLoading[3]
                                      ? const Color(0xffFF7010)
                                      : Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Моцарелла",
                          style: TextStyle(
                              color:
                                  (context.watch<TovarProvider>().isLoading[0]
                                      ? Colors.black
                                      : Colors.blueGrey),
                              fontSize: width*0.025),
                        ),
                        Column(
                          children: [
                            Text(
                              "Огурцы",
                              style: TextStyle(
                              fontSize: width*0.025,

                                  color: (context
                                          .watch<TovarProvider>()
                                          .isLoading[1]
                                      ? Colors.black
                                      : Colors.blueGrey)),
                            ),
                            Text(
                              "маринованные",
                              style: TextStyle(
                              fontSize: width*0.025,

                                  color: (context
                                          .watch<TovarProvider>()
                                          .isLoading[1]
                                      ? Colors.black
                                      : Colors.blueGrey)),
                            ),
                          ],
                        ),
                        Text(
                          "Пепперони",
                          style: TextStyle(
                              color:
                                  (context.watch<TovarProvider>().isLoading[2]
                                      ? Colors.black
                                      : Colors.blueGrey),
                              fontSize: width*0.025),
                              
                        ),
                        Text(
                          "Томатный соус",
                          style: TextStyle(
                              color:
                                  (context.watch<TovarProvider>().isLoading[3]
                                      ? Colors.black
                                      : Colors.blueGrey),
                              fontSize: width*0.025),
                        ),
                      ]),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 15),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 20,),
                          InkWell(
                            onTap: (() {
                              context.read<TovarProvider>().burn();
                            }),
                            child: Container(
                               width: 175,
                              height: 44,
                              // ignore: sort_child_properties_last
                              child:  Center(
                                child: Text(
                                  "Традиционное",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: width*0.03),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: context.watch<TovarProvider>().w
                                    ? const Color(0xffFF7010)
                                    : Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding:const  EdgeInsets.symmetric(
                                vertical: 13, horizontal: 20),
                            child: InkWell(
                              onTap: () {
                                context.read<TovarProvider>().tenkoe();
                              },
                              child: Container(
                                width: 116,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: context.watch<TovarProvider>().v
                                      ? const Color(0xffFF7010)
                                      : Colors.white,
                                ),
                                child:  Center(
                                  child: Text(
                                    "Тонкое",
                                    style: TextStyle(fontSize: width*0.03),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              context.read<TovarProvider>().olcham(0);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.07,
                              // ignore: sort_child_properties_last
                              child: Center(
                                child: Text(
                                  "20 см",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: width*0.025),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: context
                                            .watch<TovarProvider>()
                                            .isLoading2[0] ==
                                        false
                                    ? Colors.white
                                    : const Color(0xffFF7010),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 13, horizontal: 20),
                            child: InkWell(
                              onTap: () {
                                context.read<TovarProvider>().olcham(1);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: context
                                              .watch<TovarProvider>()
                                              .isLoading2[1] ==
                                          false
                                      ? Colors.white
                                      : const Color(0xffFF7010),
                                ),
                                child:  Center(
                                  child: Text(
                                    "28 см",
                                    style: TextStyle(fontSize: width*0.025),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 13,
                            ),
                            child: InkWell(
                              onTap: () {
                                context.read<TovarProvider>().olcham(2);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: context
                                              .watch<TovarProvider>()
                                              .isLoading2[2] ==
                                          false
                                      ? Colors.white
                                      : const Color(0xffFF7010),
                                ),
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child:  Center(
                                  child: Text(
                                    "33 см",
                                    style: TextStyle(fontSize: width*0.025),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.05),
                    child: const Text("Добавьте в пиццу"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: context.watch<TovarProvider>().isLoading1[0]
                              ? Colors.white
                              : const Color(0xffFF7010),
                        ),
                        child: Card(
                          child: IconButton(
                            onPressed: () {
                              context.read<TovarProvider>().pizza(0);
                            },
                            icon: Image.asset("assets/pishloq.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: context.watch<TovarProvider>().isLoading1[1]
                                ? Colors.white
                                : const Color(0xffFF7010),
                          ),
                          child: Card(
                            child: IconButton(
                              onPressed: () {
                                context.read<TovarProvider>().pizza(1);
                              },
                              icon: Image.asset(
                                "assets/qoziqorin.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: context.watch<TovarProvider>().isLoading1[2]
                              ? Colors.white
                              : const Color(0xffFF7010),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Card(
                          child: IconButton(
                            onPressed: () {
                              context.read<TovarProvider>().pizza(2);
                            },
                            icon: Image.asset("assets/piyoz.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: context.watch<TovarProvider>().isLoading1[3]
                              ? Colors.white
                              : const Color(0xffFF7010),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Card(
                          child: IconButton(
                            onPressed: () {
                              context.read<TovarProvider>().pizza(3);
                            },
                            icon: Image.asset("assets/olma.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children:  [
                            Text(
                              "Моцарелла",
                              style:
                                  TextStyle(color: Colors.black, fontSize: width*0.025),
                            ),
                            Text(
                              "59 ₽",
                              style: TextStyle(
                                  color: const Color(0xffFF7010),fontSize: width*0.025),
                            ),
                          ],
                        ),
                        Column(
                          children:  [
                            Text(
                              "Шампиньоны",
                              style:
                                  TextStyle(color: Colors.black, fontSize: width*0.025),
                            ),
                            Text(
                              "59 ₽",
                              style: TextStyle(
                                  color: const Color(0xffFF7010), fontSize: width*0.025),
                            ),
                          ],
                        ),
                        Column(
                          children:  [
                            Text(
                              "Красный лук",
                              style:
                                  TextStyle(color: Colors.black, fontSize: width*0.025),
                            ),
                             Text(
                              "59 ₽",
                              style: TextStyle(
                                  color: const Color(0xffFF7010), fontSize: width*0.025),
                            ),
                          ],
                        ),
                        Column(
                          children:  [
                            Text(
                              "Сладкий",
                              style:
                                  TextStyle(color: Colors.black, fontSize: width*0.025),
                            ),
                            Text(
                              "перец",
                              style:
                                  TextStyle(color: Colors.black, fontSize: width*0.025),
                            ),
                            Text(
                              "59 ₽",
                              style: TextStyle(
                                  color: const Color(0xffFF7010), fontSize: width*0.025),
                            ),
                          ],
                        ),
                      ]),
                  Card(
                    elevation: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 13, right: 12, bottom: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Итого: 379 ₽",
                                style: TextStyle(
                                    color: Color(0xffFF7010), fontSize: 12),
                              ),
                              Text("400 г",
                                  style: TextStyle(
                                      color: Color(0xffA5A5A5), fontSize: 12))
                            ],
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffFF7010),elevation: 0),
                              onPressed: () {},
                              child: const Text(
                                "В корзину",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )),
                        )
                      ],
                    ),
                  ),
                ]),
          );
        },
        itemCount: 1,
      ),
    );
  }
}
