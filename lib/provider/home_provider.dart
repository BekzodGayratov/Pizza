import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  bool isDelivery=true;
  bool isPickUp=false;
  void changeState(){
    if (isDelivery && isPickUp==false) {
      isPickUp=!isPickUp;
      isDelivery=!isDelivery;
    }
    else if(isDelivery==false && isPickUp){
      isDelivery=!isDelivery;
      isPickUp=!isPickUp;
    }
    notifyListeners();
  }
}