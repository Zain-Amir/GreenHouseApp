import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_back_button.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class ForgetPassword extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.loginImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: REdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  genericBackButton(
                    voidCallback: () => Get.back(),
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  Image.asset(
                    AppImages.appLogo,
                    height: 80.h,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    AppString.forgetPassword,
                    style: kTitleregular28,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    AppString.restEmailId,
                    style: kBodyregular16,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  GenericTextFormField(
                      hintText: AppString.email,
                      controller: emailController,
                      validator: emailValidator,
                      onEditingComplete: () {}),
                  Spacer(),
                  GenericButton(
                    voidCallBack: () => Get.toNamed(
                      AppRoutes.forgetPasswordOTP,
                    ),
                    buttonText: AppString.submit,
                    backgroundColor: Colors.transparent,
                    isBorder: true,
                    isGradients: false,
                    textColor: AppColors.secondaryColor,
                  ),
                  SizedBox(
                    height: 140.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
