import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  final pushController = ValueNotifier<bool>(false);
  final emailController = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Notification Preferences',
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
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            NotificationList(
              controller: pushController,
              text: 'Push Notification',
              imagePath: AppImages.notificationIcon,
            ),
            SizedBox(
              height: 16.h,
            ),
            NotificationList(
              controller: emailController,
              text: 'Email Notification',
              imagePath: AppImages.emailIcon,
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  String imagePath;
  String text;
  final ValueNotifier<bool> controller;

  NotificationList({
    super.key,
    required this.imagePath,
    required this.text,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.blackColorB4Shade,
      leading: SvgPicture.asset(
        imagePath,
      ),
      title: Text(
        text,
        style: kBodyregular16,
      ),
      trailing: AdvancedSwitch(
        controller: controller,
        activeColor: AppColors.primaryColor,
        inactiveColor: AppColors.blackShade200,
        activeChild: Text('ON'),
        inactiveChild: Text('OFF'),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        width: 57.0,
        height: 31.0,
        enabled: true,
        disabledOpacity: 0.5,
      ),
    );
  }
}
