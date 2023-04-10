import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_dotted_border.dart';

class CreateRoomCompleted extends StatelessWidget {
  const CreateRoomCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 20.r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GenericDottedBorder(
              imagePath: AppImages.completeIcon,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              AppString.success,
              style: kTitleregular28,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppString.liveRoomCreatedSuccessfully,
              textAlign: TextAlign.center,
              style: kBodyregular16.copyWith(
                color: AppColors.blackShade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
