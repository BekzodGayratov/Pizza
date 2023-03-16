import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  // CONTROLLERS
  TextEditingController promocodController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController streetNameController = TextEditingController();
  TextEditingController homeNameController = TextEditingController();
  TextEditingController entranceNumController = TextEditingController();
  TextEditingController floorNumController = TextEditingController();
  TextEditingController apartmentNumController = TextEditingController();
  TextEditingController intercomNumController = TextEditingController();
  TextEditingController changeNumController = TextEditingController();
  TextEditingController restaurantNameController = TextEditingController();

  // VARIABLES
  bool isCash=false;
  bool isCard = false;
  bool isApplePay=false;


  bool isFast=true;
  bool inTime= false;


  bool isDelivery = true;
  bool isPickUp = false;

  void changeState() {
    if (isDelivery && isPickUp == false) {
      isPickUp = !isPickUp;
      isDelivery = !isDelivery;
      notifyListeners();
    } else if (isDelivery == false && isPickUp) {
      isDelivery = !isDelivery;
      isPickUp = !isPickUp;
      notifyListeners();
    }
  }

  void changeDeleverytime(){
    if (isFast && inTime== false) {
      isFast= !isFast;
      inTime = !inTime;
      notifyListeners();
    } else if(isFast == false && inTime){
      inTime = !inTime;
      isFast= !isFast;
      notifyListeners();
    }
  }
  
  void changeToCash(){
    if (isCash) {
      isCash = !isCash;
      isCard = false;
      isApplePay = false;
      notifyListeners();
    }else{
      isCash = !isCash;
      isCard = false;
      isApplePay = false;
      notifyListeners();
    }
  }

  void changetoCard(){
    if (isCard) {
      isCard = !isCard;
      isCash = false;
      isApplePay = false;
      notifyListeners();
    }else{
      isCard = !isCard;
      isCash = false;
      isApplePay = false;
      notifyListeners();
    }
  }

  void changeToApplePay(){
    if (isApplePay) {
      isApplePay = !isApplePay;
      isCard = false;
      isCash = false;
      notifyListeners();
    } else {
      isApplePay = !isApplePay;
      isCard = false;
      isCash = false;
      notifyListeners();
    }
  }
  

}
