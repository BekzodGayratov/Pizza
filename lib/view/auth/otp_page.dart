import 'package:flutter/material.dart';
import 'package:pizza/provider/auth/otp_provider.dart';
import 'package:provider/provider.dart';

import '../../core/helper/pizza_loading_widget.dart';

class OtpPage extends StatelessWidget {
  final List data;
  const OtpPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => OtpProvider(),
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                  "Код из смс",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                 Text(
                  "На номер ${data[1]}",
                  style: const TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: size.width * 0.2),
                child: TextFormField(
                  controller: context.watch<OtpProvider>().otpCodeController,
                  decoration: const InputDecoration(hintText: "Otp kodni kiriting",border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                  height: size.height * 0.02,
                ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: size.width * 0.2),
                  child: SizedBox(
                    height: size.height * 0.06,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFF7010)),
                        onPressed: () {
                           context.read<OtpProvider>().checkOtp(context, data[0]);
                        },
                        child: Visibility(
                          replacement: const Center(
                            child: PizzaLoadingWidget(),
                          ),
                          visible:
                              !context.watch<OtpProvider>().isLoading,
                          child: const Text(
                            "Войти",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                 const Text(
                  "Отправить код ещё раз через: Future.delayed",
                  style: TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.w400),
                ),
            ],
          ),
        );
      },
    );
  }
}
