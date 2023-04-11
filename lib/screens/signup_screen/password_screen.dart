import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/signup_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_back_button.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({super.key});

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: SingleChildScrollView(
            child: Padding(
              padding: REdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: GetBuilder<SignupController>(builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    genericBackButton(
                      voidCallback: () => Get.back(),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Image.asset(
                      AppImages.appLogo,
                      height: 80.h,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      AppString.createNewPassword,
                      style: kTitleregular28,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      AppString.setYourNewPassword,
                      style: kBodyregular16,
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    GenericTextFormField(
                        hintText: AppString.newPasword,
                        controller: passwordController,
                        validator: requiredValidator,
                        obsecure: controller.passwordObsecure,
                        onTap: () => controller.updatePassword(),
                        suffixIcon: controller.passwordObsecure
                            ? AppImages.passwordHide
                            : AppImages.passwordShow,
                        onEditingComplete: () {}),
                    SizedBox(
                      height: 16.h,
                    ),
                    GenericTextFormField(
                        hintText: AppString.confirmPassword,
                        controller: confirmPassword,
                        obsecure: controller.confirmPasswordObsecure,
                        onTap: () => controller.updateConfirmPassword(),
                        suffixIcon: controller.confirmPasswordObsecure
                            ? AppImages.passwordHide
                            : AppImages.passwordShow,
                        validator: requiredValidator,
                        onEditingComplete: () {}),
                    SizedBox(
                      height: 48.h,
                    ),
                    GenericButton(
                      voidCallBack: () => Get.toNamed(
                        AppRoutes.profileSetup,
                      ),
                      buttonText: AppString.submit,
                      isGradients: false,
                      isBorder: true,
                      backgroundColor: Colors.transparent,
                      textColor: AppColors.secondaryColor,
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      AppString.passwordPolicy,
                      style: kCaptionregular12,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        termAndConditions(
                          value: AppString.passwordLength,
                        ),
                        termAndConditions(
                          value: AppString.passwordType,
                        ),
                        termAndConditions(
                          value: AppString.containNumbers,
                        ),
                        termAndConditions(
                          value: AppString.specialChar,
                        ),
                      ],
                    )
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  Row termAndConditions({required String value}) {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.checkMark,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          value,
          style: kCaptionregular12,
        ),
      ],
    );
  }
}
