import 'package:flutter/material.dart';
import 'package:pizza/core/helper/pizza_error_message_widget.dart';
import 'package:pizza/data/service/auth_service.dart';

class OtpProvider extends ChangeNotifier {
  TextEditingController otpCodeController = TextEditingController();

  bool isLoading = false;
  AuthService authService = AuthService();

  void checkOtp(BuildContext context, String token) async {
    isLoading = true;
    notifyListeners();
    await authService
        .checkOtp(otpCode: otpCodeController.text, token: token)
        .then((dynamic response) {
      if (response == false) {
        isLoading = false;
        debugPrint("SUCCESS. REGISTER");
      } else if (response == true) {
        debugPrint("SUCCESS. LOGIN");
        isLoading = false;
      } else {
        showPizzaErrorMessage(response);
      }
    });
    notifyListeners();
  }
}
