import 'package:flutter/material.dart';

class FourthCounterProvider extends ChangeNotifier {
  int countValue = 1;

  void add() {
    countValue++;
    print(countValue);
    notifyListeners();
  }

  void disscrement() {
    if (countValue < 1) {
      countValue = 0;
      notifyListeners();
    } else {
      countValue--;
      notifyListeners();
    }
  }
}
