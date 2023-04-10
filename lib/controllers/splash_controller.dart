import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    goToNext();
  }

  goToNext() async {
    await Future.delayed(const Duration(seconds: 3));
    checkInternetConnection();
  }

  checkInternetConnection() async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      SharedPreferences sharedP = await SharedPreferences.getInstance();
      if (sharedP.getBool("isFirstTime") == null) {
        Get.offAllNamed(AppRoutes.onBoardingScreen);
      } else {
        Get.offAllNamed(AppRoutes.loginStart);
      }
    } else {
      Get.offAllNamed(AppRoutes.noInternet);
    }
  }
}
