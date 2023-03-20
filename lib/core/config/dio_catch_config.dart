import 'package:dio/dio.dart';

class DioHandleCatchError {
  static String from(DioError e) {
    switch (e.type) {
      case DioErrorType.connectionTimeout:
        return "connectTimeout";
      case DioErrorType.receiveTimeout:
        return "receiveTimeout";
      case DioErrorType.sendTimeout:
        return "sendTimeout";
      case DioErrorType.unknown:
        return "noConnection";
      default:
        return "some thing went wrong";
    }
  }
}
