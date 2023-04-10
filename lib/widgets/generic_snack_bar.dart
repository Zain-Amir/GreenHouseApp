import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';

SnackbarController GenericSnackBar({required String text}) {
  return Get.snackbar(
    "Message",
    text,
    colorText: AppColors.secondaryColor,
  );
}
