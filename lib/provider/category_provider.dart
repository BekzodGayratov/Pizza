import 'package:flutter/material.dart';
import 'package:pizza/data/model/category_model.dart';
import 'package:pizza/data/service/get_ctg_list_service.dart';

class CategoryProvider extends ChangeNotifier {
  CategoryProvider(){
    getCategoryList();
  }
  // Instance
  CategoryService categoryService = CategoryService();

  // Variables
  bool isLoading = false;
  List<CategoryModel> data = [];
  String error = "";

  Future<void> getCategoryList() async {
    isLoading = true;
    notifyListeners();
    await categoryService.getCategoryList().then((dynamic response) {
      if (response is List<CategoryModel>) {
        data = response;
      } else {
        error = response;
      }
      isLoading = false;
      notifyListeners();
    });
  }
}
