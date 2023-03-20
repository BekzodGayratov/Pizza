import 'package:dio/dio.dart';
import 'package:pizza/core/config/dio_catch_config.dart';
import 'package:pizza/core/config/dio_config.dart';
import 'package:pizza/core/constants/end_points.dart';
import 'package:pizza/core/extensions/cut_probel_ext.dart';
import 'package:pizza/data/model/auth/step_one_model.dart';

class AuthService {
  Future<dynamic> stepOne({required String phoneNumber}) async {
    try {
      Response response =
          await DioConfig.createRequest().post(PizzaEndPoints.stepOne, data: {
        "method": "step.one",
        "params": {"phone": phoneNumber.cutProbel()}
      });

      if (response.statusCode == 200) {
        return StepOneModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return DioHandleCatchError.from(e);
    }
  }

  Future<dynamic> checkOtp(
      {required String otpCode, required String token}) async {
    try {
      Response response =
          await DioConfig.createRequest().post(PizzaEndPoints.otp, data: {
        "method": "step.two",
        "params": {"otp": otpCode, "token": token}
      });

      if (response.statusCode == 200) {
        if (response.data["is_registered"] != null &&
            response.data["is_registered"] == true) {
          // Login
          return true;
        } else if (response.data["is_registered"] != null &&
            response.data["is_registered"] == false) {
          // Register
          return false;
        } else if (response.data["is_registered"] == null &&
            response.data["Error"] != null) {
          return response.data["Error"];
        }
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return DioHandleCatchError.from(e);
    }
  }
}
