import 'package:get/get.dart';

class ChatController extends GetxController {
  bool? isChat = false;

  updateIsChat() {
    isChat = true;
    update();
  }
}
