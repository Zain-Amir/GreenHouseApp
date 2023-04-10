import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:green_house_app/controllers/signup_controller.dart';
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

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: GetBuilder<SignupController>(builder: (controller) {
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
                    AppString.signUp,
                    style: kTitleregular28,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    AppString.enterYourEmail,
                    style: kBodyregular16,
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
                              Get.toNamed(AppRoutes.emailVerification),
                          buttonText: AppString.signUp,
                          isBorder: true,
                          isGradients: true,
                          textColor: AppColors.whiteColor,
                        )
                      : GenericButton(
                          voidCallBack: () => GenericSnackBar(
                              text:
                                  'Please Accept All the Terms and Condidtions'),
                          buttonText: AppString.signUp,
                          isBorder: true,
                          isGradients: false,
                          backgroundColor: Colors.transparent,
                          textColor: AppColors.secondaryColor,
                        ),
                ],
              ),
            );
          }),
        ),
      ),
    ));
  }
}
