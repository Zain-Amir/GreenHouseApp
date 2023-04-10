import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_back_button.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:pinput/pinput.dart';

class ForgetPasswordOTP extends StatelessWidget {
  ForgetPasswordOTP({super.key});
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.blackShade300;

    final defaultPinTheme = PinTheme(
      width: 45.h,
      height: 56,
      textStyle: TextStyle(
        fontSize: 27.sp,
        color: AppColors.secondaryColor,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.blackShade300,
          ),
        ),
      ),
    );

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
              horizontal: 24.w,
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
                  AppString.enterVerificationCode,
                  style: kTitleregular28,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  AppString.enterCodeOnYourEmail,
                  style: kBodyregular16,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  AppString.verificationCode,
                  style: kCaptionregular12.copyWith(
                    color: AppColors.blackShade300,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Directionality(
                  // Specify direction if desired
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    controller: pinController,
                    length: 6,
                    focusNode: focusNode,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    defaultPinTheme: defaultPinTheme,
                    validator: (value) {
                      return value == '2222' ? null : 'Pin is incorrect';
                    },
                    // onClipboardFound: (value) {
                    //   debugPrint('onClipboardFound: $value');
                    //   pinController.setText(value);
                    // },
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    onCompleted: (pin) {
                      debugPrint('onCompleted: $pin');
                    },
                    onChanged: (value) {
                      debugPrint('onChanged: $value');
                    },
                    cursor: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 9),
                          width: 22,
                          height: 1,
                          color: focusedBorderColor,
                        ),
                      ],
                    ),
                    focusedPinTheme: defaultPinTheme,
                    submittedPinTheme: defaultPinTheme,
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: const Border(
                        bottom: BorderSide(
                          color: AppColors.errorColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GenericButton(
                  voidCallBack: () {},
                  buttonText: AppString.submit,
                  backgroundColor: Colors.transparent,
                  isBorder: true,
                  isGradients: false,
                  textColor: AppColors.secondaryColor,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Resend - 00:59',
                    style: kSubtitleregular14,
                  ),
                ),
                SizedBox(
                  height: 92.h,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
