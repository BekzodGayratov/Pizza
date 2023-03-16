import 'package:flutter/material.dart';
import 'package:pizza/core/helper/pizza_error_message_widget.dart';
import 'package:pizza/data/model/auth/step_one_model.dart';
import 'package:pizza/data/service/auth_service.dart';

class StepOneProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();
  bool isLoading = false;
  AuthService authService = AuthService();

  void stepOne(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    await authService
        .stepOne(phoneNumber: phoneNumberController.text)
        .then((dynamic response) {
      if (response is StepOneModel) {
        isLoading = false;
        Navigator.pushNamed(context, "otp", arguments:[response.token,phoneNumberController.text]);
        showPizzaErrorMessage("OTP CODE: ${response.otp}");
      } else {
        showPizzaErrorMessage(response);
        isLoading = false;
      }
    });
    notifyListeners();
  }
}
