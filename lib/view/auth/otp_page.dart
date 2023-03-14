import 'package:flutter/material.dart';
import 'package:pizza/provider/auth/otp_provider.dart';
import 'package:provider/provider.dart';

class OtpPage extends StatelessWidget {
  final String token;
  const OtpPage({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OtpProvider(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(title: const Text("Otp page")),
          body: Center(
            child: TextFormField(
              controller: context.watch<OtpProvider>().otpCodeController,
              decoration: const InputDecoration(hintText: "Otp kodni kiriting"),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            context.read<OtpProvider>().checkOtp(context, token);
          }),
        );
      },
    );
  }
}
