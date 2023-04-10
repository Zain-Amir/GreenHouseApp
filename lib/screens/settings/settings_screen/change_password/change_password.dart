import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_dotted_border.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class ChangePasswordScreen extends StatelessWidget {
  TextEditingController currentPasswordController = TextEditingController();
  ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Change Password',
          style: kBodyregular16.copyWith(color: AppColors.whiteColor),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              GenericDottedBorder(
                imagePath: AppImages.lockIcon,
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Current Password',
                style: kTitleregular28,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Please enter your current password.',
                style: kSubtitleregular14.copyWith(
                  color: AppColors.blackShade200,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              GenericTextFormField(
                hintText: 'Current Password',
                controller: currentPasswordController,
                validator: requiredValidator,
                onEditingComplete: () {},
                suffixIcon: AppImages.passwordHide,
              ),
              SizedBox(
                height: 170.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 28.w,
                ),
                child: GenericButton(
                  voidCallBack: () => Get.toNamed(
                    AppRoutes.newPassword,
                  ),
                  buttonText: 'Submit',
                  isBorder: true,
                  isGradients: false,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
