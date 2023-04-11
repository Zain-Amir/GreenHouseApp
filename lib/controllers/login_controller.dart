import 'package:get/get.dart';

class LoginController extends GetxController {
  // Password is obsecure
  bool isObsecure = true;

  // Terms And Conditions
  bool firstTerm = false;
  bool secondTerm = false;

  updatePassword() {
    isObsecure = !isObsecure;
    print(isObsecure);
    update();
  }

  updateFirstTerm() {
    firstTerm = !firstTerm;
    update();
  }

  updateSecondTerm() {
    secondTerm = !secondTerm;
    update();
  }
}
