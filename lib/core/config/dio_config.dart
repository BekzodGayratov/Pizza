import 'package:dio/dio.dart';

class DioConfig {
  static Dio createRequest() {
    Dio dio = Dio(BaseOptions(
      validateStatus: (int? statusCode) {
        if (statusCode != null) {
          if (statusCode >= 100 && statusCode <= 599) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      },
      receiveDataWhenStatusError: true,
    ));

    // TIME OUT CONFIGURATION

    dio.options.connectTimeout = const Duration(seconds: 55); // 55 seconds
    dio.options.receiveTimeout = const Duration(seconds: 55); // 55 seconds
    dio.options.sendTimeout = const Duration(seconds: 55); // 55 seconds
    return dio;
  }
}
