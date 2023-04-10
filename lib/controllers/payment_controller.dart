import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController cVVController = TextEditingController();
  TextEditingController cardNameController = TextEditingController();
  int selectedIndex = 0;

  updateIndex({required int value}) {
    selectedIndex = value;
    update();
  }
}
