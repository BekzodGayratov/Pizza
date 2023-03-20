import 'package:dio/dio.dart';
import 'package:pizza/core/constants/end_points.dart';

import '../../core/config/dio_catch_config.dart';
import '../../core/config/dio_config.dart';
import '../model/category_model.dart';

class CategoryService {
  Future<dynamic> getCategoryList() async {
    try {
      Response response = await DioConfig.createRequest().get(PizzaEndPoints.ctgList);
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => CategoryModel.fromJson(e)).toList();
      }
      else{
        return response.statusMessage;
      }
    } on DioError catch (e) {
      return DioHandleCatchError.from(e);
    }
  }
}
