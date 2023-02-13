import 'package:flutter/material.dart';

class BasketProvider extends ChangeNotifier {
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

  // VARIABLES
  bool isClicked=false;
  bool isDelivery = true;
  bool isPickUp = false;

  void changeState() {
    if (isDelivery && isPickUp == false) {
      isPickUp = !isPickUp;
      isDelivery = !isDelivery;
    } else if (isDelivery == false && isPickUp) {
      isDelivery = !isDelivery;
      isPickUp = !isPickUp;
    }
    notifyListeners();
  }
}
