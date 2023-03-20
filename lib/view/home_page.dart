import 'package:flutter/material.dart';
import 'package:pizza/provider/category_provider.dart';
import 'package:provider/provider.dart';

import '../core/helper/pizza_loading_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _TopPartState();
}

class _TopPartState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CategoryProvider provider = Provider.of<CategoryProvider>(context);
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 243, 241, 241),
          body: SafeArea(
            child: Visibility(
              visible: !provider.isLoading,
              replacement: const Center(
                child: PizzaLoadingWidget(),
              ),
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 13),
                                        child: Container(
                                          width: 100,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.orange,
                                              width: 1.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Center(
                                              child: Text(provider
                                                  .data[index].content
                                                  .toString())),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(
                                        width: 10,
                                      );
                                    },
                                    itemCount: provider.data.length))
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
                                  children: const [
                                    Text("Api dan ma'lumot keladi")
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    //LocationBar
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
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
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Пицца",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, elevation: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/filter.png'),
                                   Text(
                                    "Фильтры",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                        height: size.height * 0.7,
                        width: double.infinity,
                        child: Builder(builder: (context) {
                          return ListView.builder(
                            itemCount: provider.data[1].products!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  height: size.height * 0.15,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset("assets/pizzaa.png"),
                                          Positioned(
                                              child: provider
                                                          .data[1]
                                                          .products![index]
                                                          .status !=
                                                      null
                                                  ? Image.asset(
                                                      'assets/new.png')
                                                  : const SizedBox())
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[1]
                                                    .products![index].name
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[1]
                                                    .products![index].shortDesc
                                                    .toString(),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                              ),
                                            ),
                                            Container(
                                              color: const Color(0xffFFEEE2),
                                              width: size.width * 0.2,
                                              height: size.height * 0.035,
                                              child: Text(
                                                "от ${provider.data[1].products![index].starter.toString()}",
                                                style: const TextStyle(
                                                    color: Colors.orange),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        })),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Суши",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, elevation: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/filter.png'),
                                  Text(
                                    "Фильтры",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                        height: size.height * 0.7,
                        width: double.infinity,
                        child: Builder(builder: (context) {
                          return ListView.builder(
                            itemCount: provider.data[2].products!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  height: size.height * 0.15,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset("assets/sushii.png"),
                                          Positioned(
                                              child: provider
                                                          .data[2]
                                                          .products![index]
                                                          .status !=
                                                      null
                                                  ? Image.asset(
                                                      'assets/new.png')
                                                  : const SizedBox())
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[2]
                                                    .products![index].name
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[2]
                                                    .products![index].shortDesc
                                                    .toString(),
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                              ),
                                            ),
                                            Container(
                                              color: const Color(0xffFFEEE2),
                                              width: size.width * 0.2,
                                              height: size.height * 0.035,
                                              child: Text(
                                                "от ${provider.data[2].products![index].starter.toString()}",
                                                style: const TextStyle(
                                                    color: Colors.orange),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        })),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        children: [
                          Text(
                            "Закуски",
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: size.height * 0.5,
                        width: double.infinity,
                        child: Builder(builder: (context) {
                          return ListView.builder(
                            itemCount: provider.data[4].products!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  height: size.height * 0.15,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset("assets/free.png"),
                                          Positioned(
                                              child: provider
                                                          .data[4]
                                                          .products![index]
                                                          .status !=
                                                      null
                                                  ? Image.asset(
                                                      'assets/new.png')
                                                  : const SizedBox())
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[4]
                                                    .products![index].name
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[4]
                                                    .products![index].shortDesc
                                                    .toString(),
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                              ),
                                            ),
                                            Container(
                                              color: const Color(0xffFFEEE2),
                                              width: size.width * 0.2,
                                              height: size.height * 0.035,
                                              child: Text(
                                                "от ${provider.data[4].products![index].starter.toString()}",
                                                style: const TextStyle(
                                                    color: Colors.orange),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        })),
                        Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Row(
                        children: [
                          Text(
                            "Напитки",
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: size.height * 0.7,
                        width: double.infinity,
                        child: Builder(builder: (context) {
                          return ListView.builder(
                            itemCount: provider.data[3].products!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  height: size.height * 0.15,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset("assets/free.png"),
                                          Positioned(
                                              child: provider
                                                          .data[3]
                                                          .products![index]
                                                          .status !=
                                                      null
                                                  ? Image.asset(
                                                      'assets/new.png')
                                                  : const SizedBox())
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.02),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[3]
                                                    .products![index].name
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.6,
                                              child: Text(
                                                provider.data[3]
                                                    .products![index].shortDesc
                                                    .toString(),
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                              ),
                                            ),
                                            Container(
                                              color: const Color(0xffFFEEE2),
                                              width: size.width * 0.2,
                                              height: size.height * 0.035,
                                              child: Text(
                                                "от ${provider.data[3].products![index].starter.toString()}",
                                                style: const TextStyle(
                                                    color: Colors.orange),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }))
                  ],
                ),
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
      },
    );
  }
}
