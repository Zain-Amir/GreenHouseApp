import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/login_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_back_button.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_checkbox.dart';
import 'package:green_house_app/widgets/generic_snack_bar.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode focusNode = FocusNode();
  LoginScreen({super.key});

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
              child: GetBuilder<LoginController>(builder: (controller) {
                return Form(
                  key: _formKey,
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
                        height: 40.h,
                      ),
                      Text(
                        AppString.signIn,
                        style: kTitleregular28,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      GenericTextFormField(
                        controller: emailController,
                        hintText: AppString.email,
                        onEditingComplete: () {},
                        validator: emailValidator,
                        autoFocus: false,
                        focusNode: focusNode,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      GenericTextFormField(
                        controller: passwordController,
                        hintText: AppString.password,
                        onEditingComplete: () {},
                        validator: passwordValidator,
                        autoFocus: false,
                        obsecure: controller.isObsecure,
                        onTap: () => controller.updatePassword(),
                        suffixIcon: controller.isObsecure
                            ? AppImages.passwordHide
                            : AppImages.passwordShow,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          GenericCheckBox(
                            onTap: () => controller.updateFirstTerm(),
                            isChecked: controller.firstTerm,
                          ),
                          SizedBox(
                            width: 12.h,
                          ),
                          Text(
                            AppString.loginFirstTermAndCondition,
                            style: kBodyregular16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        children: [
                          GenericCheckBox(
                            onTap: () => controller.updateSecondTerm(),
                            isChecked: controller.secondTerm,
                          ),
                          SizedBox(
                            width: 12.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppString.loginSecondTermAndCondition,
                                style: kBodyregular16,
                              ),
                              Text(
                                AppString.termAndCondition,
                                style: kBodyregular16.copyWith(
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 56.h,
                      ),
                      controller.firstTerm && controller.secondTerm
                          ? GenericButton(
                              voidCallBack: () =>
                                  Get.offAllNamed(AppRoutes.dashBoard),
                              buttonText: AppString.signIn,
                              isBorder: true,
                              isGradients: true,
                              textColor: AppColors.whiteColor,
                            )
                          : GenericButton(
                              voidCallBack: () => GenericSnackBar(
                                  text:
                                      'Please Accept All the Terms and Condidtions'),
                              buttonText: AppString.signIn,
                              isBorder: true,
                              isGradients: false,
                              backgroundColor: Colors.transparent,
                              textColor: AppColors.secondaryColor,
                            ),
                      SizedBox(
                        height: 38.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () => Get.toNamed(
                            AppRoutes.forgetPassword,
                          ),
                          child: Text(
                            AppString.forgetPassword,
                            style: kSubtitleregular14.copyWith(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
