import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/splash_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 46.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.noInternet,
              ),
              Text(
                'Ooops!',
                style: kTitleregular32.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.h,
                  bottom: 42.w,
                ),
                child: Text(
                  'No internet connection found.Check your connection.',
                  textAlign: TextAlign.center,
                  style: kBodyregular16.copyWith(
                    color: AppColors.blackShade200,
                  ),
                ),
              ),
              SizedBox(
                width: 200.w,
                child: GenericButton(
                  voidCallBack: () {
                    Get.find<SplashController>().checkInternetConnection();
                  },
                  buttonText: 'Retry',
                  isBorder: false,
                  isGradients: false,
                  textColor: AppColors.whiteColor,
                  backgroundColor: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ));
  }
}
