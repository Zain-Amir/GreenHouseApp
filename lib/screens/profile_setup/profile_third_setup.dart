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
import 'package:green_house_app/widgets/generic_selection_box.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class ProfileThirdSetup extends StatelessWidget {
  ProfileThirdSetup({super.key});
  TextEditingController favoriteStrain = TextEditingController();

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
              '03/03',
              style: kSubtitleregular14.copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ],
      ),
      body: GetBuilder<ProfileSetupController>(builder: (controller) {
        return SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.symmetric(
              horizontal: 20.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*   GenericDottedBorder(
                  imagePath: AppImages.weedicon,
                ), */
                Image.asset(
                  "assets/Smoking_pref_video.gif",
                  height: 160.h,
                  width: 160.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  AppString.smookingPreferences,
                  style: kTitleregular28,
                ),
                Text(
                  AppString.chooseYourType,
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
                      imagePath: AppImages.smokerIcon,
                      voidCallback: () => controller.upisActive(value: 'smoker'),
                      isGradient: controller.isActive == 'smoker' ? true : false,
                      title: AppString.smoker,
                      textColor: controller.isActive == 'smoker' ? AppColors.secondaryColor : AppColors.whiteColor,
                    ),
                    GenericSelectionBox(
                      imagePath: AppImages.dabberIcon,
                      voidCallback: () => controller.upisActive(value: 'dabber'),
                      isGradient: controller.isActive == 'dabber' ? true : false,
                      title: AppString.dabber,
                      textColor: controller.isActive == 'dabber' ? AppColors.secondaryColor : AppColors.whiteColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Center(
                  child: GenericSelectionBox(
                    imagePath: AppImages.edibleIcon,
                    voidCallback: () => controller.upisActive(value: 'edible'),
                    isGradient: controller.isActive == 'edible' ? true : false,
                    title: AppString.edible,
                    textColor: controller.isActive == 'edible' ? AppColors.secondaryColor : AppColors.whiteColor,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                GenericTextFormField(hintText: 'Favorite Strain', controller: favoriteStrain, validator: requiredValidator, onEditingComplete: () {}),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: REdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GenericButton(
                        voidCallBack: () => Get.toNamed(
                          AppRoutes.profileCompleted,
                        ),
                        buttonText: AppString.next,
                        isGradients: false,
                        isBorder: true,
                        backgroundColor: Colors.transparent,
                        textColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
