import 'package:get/get.dart';

class CreateRoomController extends GetxController {
  bool? isAdded = false;
  updateIsAdded() {
    isAdded = true;
    update();
  }
}
