import 'package:flutter/material.dart';

class TovarProvider extends ChangeNotifier {
  HomeProvider() {}
  List<bool> isLoading = [true, true, true, true];
  bool w = false;
  bool v = false;
  void burnOut(int index) async {
    if (isLoading[index] == true) {
      isLoading[index] = false;
      notifyListeners();
    } else {
      isLoading[index] = true;

      notifyListeners();
    }
  }

  void burn() {
    if (w == false) {
      w = true;
      notifyListeners();
     
    } else {
      w = false;
      notifyListeners();
    }
  }

  void tenkoe() {
    if (v == false) {
      v = true;
      notifyListeners();
    }  else {
      v = false;
      notifyListeners();
    }
  }

  List<bool> isLoading1 = [true, true, true, true];
  void pizza(int index) async {
    if (isLoading1[index] == true) {
      isLoading1[index] = false;
      notifyListeners();
    } else {
      isLoading1[index] = true;

      notifyListeners();
    }
  }

  List<bool> isLoading2 = [false, false, false];
  void olcham(int index) {
    if (isLoading2[index] == false) {
      isLoading2[index] = true;
     
      notifyListeners();
    } else {
      isLoading2[index] = false;
      notifyListeners();
    }
  }
}
