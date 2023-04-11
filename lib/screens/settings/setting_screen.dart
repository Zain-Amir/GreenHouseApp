import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
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
        padding: REdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: Column(
          children: [
            MenuSetting(
              imagePath: AppImages.notificationIcon,
              text: 'Notification Preferences',
              voidCallback: () => Get.toNamed(
                AppRoutes.notificationScreen,
              ),
            ),
            MenuSetting(
              imagePath: AppImages.lockIcon,
              text: 'Change Password',
              voidCallback: () => Get.toNamed(
                AppRoutes.changePasswordScreen,
              ),
            ),
            MenuSetting(
              imagePath: AppImages.helpandFaq,
              text: 'Help & FAQ’s',
              voidCallback: () => Get.toNamed(
                AppRoutes.helpandfaqsscreen,
              ),
            ),
            MenuSetting(
              imagePath: AppImages.termsAndConditions,
              text: 'Terms & Conditions',
              voidCallback: () => Get.toNamed(
                AppRoutes.termConditionScreen,
              ),
            ),
            MenuSetting(
              imagePath: AppImages.shareIcon,
              text: 'Invite',
              voidCallback: () => Get.toNamed(
                AppRoutes.inviteScreen,
              ),
            ),
            MenuSetting(
              imagePath: AppImages.deleteIcon,
              text: 'Delete Account',
              voidCallback: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: AppColors.blackColorB4Shade,
                    content: Container(
                      height: 238.h,
                      decoration: BoxDecoration(
                        color: AppColors.blackColorB4Shade,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Delete Account',
                            style: kTitleregular18,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            'Your all files and data will be remove permanently.',
                            textAlign: TextAlign.center,
                            style: kSubtitleregular14,
                          ),
                          Text(
                            'Are you sure you want to Delete your account?',
                            textAlign: TextAlign.center,
                            style: kSubtitleregular14,
                          ),
                          SizedBox(
                            height: 33.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 40.h,
                                  child: GenericButton(
                                    voidCallBack: () {},
                                    buttonText: 'Cancel',
                                    isBorder: true,
                                    isGradients: false,
                                    backgroundColor: Colors.transparent,
                                    textColor: AppColors.secondaryColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 17.h,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 40.h,
                                  child: GenericButton(
                                    voidCallBack: () {},
                                    buttonText: 'Delete',
                                    isBorder: false,
                                    isGradients: true,
                                    textColor: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            MenuSetting(
              imagePath: AppImages.signoutIcon,
              text: 'Sign Out',
              voidCallback: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: AppColors.blackColorB4Shade,
                    content: Container(
                      height: 164.h,
                      decoration: BoxDecoration(
                        color: AppColors.blackColorB4Shade,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Sign Out',
                            style: kTitleregular18,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            'Are you sure you want to log out?',
                            style: kSubtitleregular14,
                          ),
                          SizedBox(
                            height: 33.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 40.h,
                                  child: GenericButton(
                                    voidCallBack: () {},
                                    buttonText: 'Cancel',
                                    isBorder: true,
                                    isGradients: false,
                                    backgroundColor: Colors.transparent,
                                    textColor: AppColors.secondaryColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 17.h,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 40.h,
                                  child: GenericButton(
                                    voidCallBack: () {},
                                    buttonText: 'Sign Out',
                                    isBorder: false,
                                    isGradients: true,
                                    textColor: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              isSignout: true,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuSetting extends StatelessWidget {
  String imagePath;
  String text;
  VoidCallback voidCallback;
  bool? isSignout;
  MenuSetting({
    super.key,
    required this.imagePath,
    required this.text,
    required this.voidCallback,
    this.isSignout = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: voidCallback,
      leading: SvgPicture.asset(
        imagePath,
      ),
      title: Text(
        text,
        style: kBodyregular16,
      ),
      trailing: SvgPicture.asset(
        AppImages.arrowForwardWithColor,
      ),
    );
  }
}
