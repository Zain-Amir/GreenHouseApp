import 'package:get/get.dart';

class ProfileSetupController extends GetxController {
  String isActive = '';

  upisActive({required String value}) {
    isActive = value;
    update();
  }
}
