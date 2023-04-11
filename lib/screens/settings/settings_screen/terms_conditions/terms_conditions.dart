import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_dotted_border.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Terms & Conditions',
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
          horizontal: 21.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GenericDottedBorder(
              imagePath: AppImages.noteIcon,
            ),
            Text(
              'Terms & Conditions',
              style: kTitleregular22,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              textAlign: TextAlign.center,
              style: kSubtitleregular14.copyWith(
                color: AppColors.blackShade500,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              textAlign: TextAlign.center,
              style: kSubtitleregular14.copyWith(
                color: AppColors.blackShade500,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              textAlign: TextAlign.center,
              style: kSubtitleregular14.copyWith(
                color: AppColors.blackShade500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
