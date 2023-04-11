import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../controllers/profile_setup_controller.dart';
import '../../../../resources/app_colors.dart';
import '../../../../resources/app_text_styles.dart';

class PasswordCompletedScreen extends StatefulWidget {
  const PasswordCompletedScreen({super.key});

  @override
  State<PasswordCompletedScreen> createState() => _PasswordCompletedScreenState();
}

class _PasswordCompletedScreenState extends State<PasswordCompletedScreen> with TickerProviderStateMixin {
  FlutterGifController? controller;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: GetBuilder<ProfileSetupController>(
        builder: (_) {
          return Padding(
            padding: REdgeInsets.symmetric(
              horizontal: 20.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/congratulation_video.gif",
                  height: 160.h,
                  width: 160.w,
                ),
                /*  GenericDottedBorder(
                  imagePath: AppImages.completeIcon,
                ), */
                //  const AssetImage("assets/congratulation_video.gif"),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Successful',
                  style: kTitleregular28,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Your password has been successfully changed.',
                  textAlign: TextAlign.center,
                  style: kBodyregular16.copyWith(
                    color: AppColors.blackShade300,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
