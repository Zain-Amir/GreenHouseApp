import 'package:get/get.dart';

class UserProfileController extends GetxController {
  bool? isActive = true;

  void updateActive() {
    isActive = !isActive!;

    print(isActive);
    update();
  }
}
