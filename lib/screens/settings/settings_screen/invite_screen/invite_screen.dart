import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:share_plus/share_plus.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

  void share() async {
    // await ShareIt.text(
    //   content:
    //       'https://play.google.com/store/apps/details?id=com.example.green_house_app',
    //   androidSheetTitle: 'Green House',
    // );

    Share.share(
      'https://play.google.com/store/apps/details?id=com.example.green_house_app',
      subject: 'Green House App',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Invite',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.inviteImage,
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            'Invite Friends',
            style: kTitleregular22.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Get your friends on board for\nyour favorite sessions.',
            textAlign: TextAlign.center,
            style: kTitleregular18.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const Spacer(),
          Padding(
            padding: REdgeInsets.symmetric(
              horizontal: 48.w,
            ),
            child: GenericButton(
              voidCallBack: share,
              buttonText: 'Invite',
              isGradients: true,
              isBorder: false,
              textColor: AppColors.whiteColor,
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
        ],
      ),
    );
  }
}
