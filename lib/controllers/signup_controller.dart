import 'package:get/get.dart';

class SignupController extends GetxController {
  bool firstTerm = false;
  bool secondTerm = false;
  bool passwordObsecure = true;
  bool confirmPasswordObsecure = true;

  updateFirstTerm() {
    firstTerm = !firstTerm;
    update();
  }

  updateSecondTerm() {
    secondTerm = !secondTerm;
    update();
  }

  updatePassword() {
    passwordObsecure = !passwordObsecure;
    update();
  }

  updateConfirmPassword() {
    confirmPasswordObsecure = !confirmPasswordObsecure;
    update();
  }
}
