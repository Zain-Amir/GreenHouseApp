import 'package:get/get.dart';
import 'package:green_house_app/controllers/chat_controller.dart';
import 'package:green_house_app/controllers/create_room_controller.dart';
import 'package:green_house_app/controllers/home_controller.dart';
import 'package:green_house_app/controllers/login_controller.dart';
import 'package:green_house_app/controllers/payment_controller.dart';
import 'package:green_house_app/controllers/profile_setup_controller.dart';
import 'package:green_house_app/controllers/signup_controller.dart';
import 'package:green_house_app/controllers/splash_controller.dart';
import 'package:green_house_app/controllers/user_profile_controller.dart';

Future<void> init() async {
  //Splash Controller

  Get.lazyPut(() => SplashController(), fenix: true);
  Get.lazyPut(() => LoginController(), fenix: true);
  Get.lazyPut(() => SignupController(), fenix: true);
  Get.lazyPut(() => ProfileSetupController(), fenix: true);
  Get.lazyPut(() => HomeController(), fenix: true);
  Get.lazyPut(() => ChatController(), fenix: true);
  Get.lazyPut(() => CreateRoomController(), fenix: true);
  Get.lazyPut(() => PaymentController(), fenix: true);
  Get.lazyPut(() => UserProfileController(), fenix: true);
}
