import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/profile_setup_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_dotted_border.dart';
import 'package:green_house_app/widgets/generic_selection_box.dart';

class ProfileSecondSetup extends StatelessWidget {
  const ProfileSecondSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.whiteColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.h,
              right: 5.w,
            ),
            child: Text(
              '02/03',
              style: kSubtitleregular14.copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GetBuilder<ProfileSetupController>(builder: (controller) {
          return Padding(
            padding: REdgeInsets.symmetric(
              horizontal: 20.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GenericDottedBorder(
                  imagePath: AppImages.genderIcon,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  AppString.whatsIsyourgender,
                  style: kTitleregular28,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  AppString.chooseYourGender,
                  textAlign: TextAlign.center,
                  style: kBodyregular16.copyWith(
                    color: AppColors.blackShade300,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GenericSelectionBox(
                      imagePath: AppImages.maleIcon,
                      voidCallback: () => controller.upisActive(value: 'male'),
                      isGradient: controller.isActive == 'male' ? true : false,
                      title: AppString.male,
                      textColor: controller.isActive == 'male' ? AppColors.secondaryColor : AppColors.whiteColor,
                    ),
                    GenericSelectionBox(
                      imagePath: AppImages.femaleIcon,
                      voidCallback: () => controller.upisActive(value: 'female'),
                      isGradient: controller.isActive == 'female' ? true : false,
                      title: AppString.female,
                      textColor: controller.isActive == 'female' ? AppColors.secondaryColor : AppColors.whiteColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Center(
                  child: GenericSelectionBox(
                    imagePath: AppImages.nonBinary,
                    voidCallback: () => controller.upisActive(value: 'nonbinary'),
                    isGradient: controller.isActive == 'nonbinary' ? true : false,
                    title: AppString.nonBinary,
                    textColor: controller.isActive == 'nonbinary' ? AppColors.secondaryColor : AppColors.whiteColor,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: REdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: GenericButton(
                    voidCallBack: () => Get.toNamed(
                      AppRoutes.profileThirdSetup,
                    ),
                    buttonText: AppString.next,
                    isGradients: true,
                    textColor: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
