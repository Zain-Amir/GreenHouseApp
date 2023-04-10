import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class LoginStartScreen extends StatelessWidget {
  const LoginStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.loginImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 36.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Image.asset(
                AppImages.appLogo,
                height: 80.h,
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                AppString.comeInOn,
                style: kTitleregular28,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                AppString.roleIn,
                style: kBodyregular16.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              GenericButton(
                buttonText: AppString.signIn,
                backgroundColor: AppColors.whiteColor,
                voidCallBack: () => Get.toNamed(
                  AppRoutes.login,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              GenericButton(
                buttonText: AppString.signUp,
                isGradients: true,
                isBorder: true,
                textColor: AppColors.whiteColor,
                voidCallBack: () => Get.toNamed(
                  AppRoutes.signUp,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 89.h,
                    child: const Divider(
                      color: AppColors.whiteColor,
                      height: 1,
                      thickness: 0.5,
                    ),
                  ),
                  Text(
                    AppString.contactWith,
                    style: kCaptionregular12,
                  ),
                  SizedBox(
                    width: 89.h,
                    child: const Divider(
                      color: AppColors.whiteColor,
                      height: 1,
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialBox(
                    filePath: AppImages.appleLogo,
                  ),
                  SizedBox(
                    width: 16.h,
                  ),
                  socialBox(
                    filePath: AppImages.facebookLogo,
                  ),
                  SizedBox(
                    width: 16.h,
                  ),
                  socialBox(
                    filePath: AppImages.googleLogo,
                  ),
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container socialBox({required String filePath}) {
    return Container(
      height: 32.h,
      width: 32.w,
      decoration: BoxDecoration(
        color: AppColors.blackShade750,
        borderRadius: BorderRadius.circular(
          4.r,
        ),
      ),
      child: Padding(
        padding: REdgeInsets.all(4.r),
        child: SvgPicture.asset(
          filePath,
        ),
      ),
    );
  }
}
