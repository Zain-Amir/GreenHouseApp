import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/profile_setup_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';

class ProfileCompleted extends StatelessWidget {
  const ProfileCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: GetBuilder<ProfileSetupController>(
        builder: (controller) {
          return Padding(
            padding: REdgeInsets.symmetric(
              horizontal: 20.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*  GenericDottedBorder(
                  imagePath: AppImages.completeIcon,
                ), */
                Image.asset(
                  "assets/congratulation_video.gif",
                  height: 160.h,
                  width: 160.w,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  AppString.congratulations,
                  style: kTitleregular28,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  AppString.onBoardingComplete,
                  textAlign: TextAlign.center,
                  style: kBodyregular16.copyWith(
                    color: AppColors.blackShade300,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
