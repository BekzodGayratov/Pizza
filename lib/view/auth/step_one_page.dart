import 'package:flutter/material.dart';
import 'package:pizza/core/helper/pizza_loading_widget.dart';
import 'package:pizza/provider/auth/step_one_provider.dart';
import 'package:provider/provider.dart';

class StepOnePage extends StatelessWidget {
  const StepOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
        create: (context) => StepOneProvider(),
        builder: (context, child) => Scaffold(
              backgroundColor: const Color(0xffF9F9F9),
              appBar: AppBar(
                backgroundColor: Colors.white,
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
              body: SingleChildScrollView(
                child: Column(children: [
                  Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      const Text(
                        "Вход в аккаунт",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text(
                        "Сможете быстро оформлять заказы,",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "использовать бонусы",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          const Text(
                            "Номер телефона",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA5A5A5)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: TextFormField(
                          controller: context
                              .watch<StepOneProvider>()
                              .phoneNumberController,
                          decoration: const InputDecoration(
                              hintText: "+7", border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.045),
                        child: SizedBox(
                          height: size.height * 0.06,
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffFF7010)),
                              onPressed: () {
                                context.read<StepOneProvider>().stepOne(context);
                              },
                              child: Visibility(
                                replacement: const Center(
                                  child: PizzaLoadingWidget(),
                                ),
                                visible:
                                    !context.watch<StepOneProvider>().isLoading,
                                child: const Text(
                                  "Войти",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.0),
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Text(
                        "Продолжая, вы соглашаетесь со сбором и обработкой ",
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "персональных данных и пользовательским соглашением",
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 234.0,
                      )
                    ],
                  )),
                ]),
              ),
            ));
  }
}
