import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/screens/LiveChat/ExploreNow.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../widgets/generic_button.dart';

class AudienceInteraction extends StatelessWidget {
  const AudienceInteraction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Audience Interaction',
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
            const Spacer(),
            Image.asset(
              "assets/images/audience.png",
              height: 160.h,
              width: 160.w,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  'Audience Interaction',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  gradientDirection: GradientDirection.ttb,
                  colors: <Color>[
                    const Color(0xffD19E22).withOpacity(0.8),
                    const Color(0xff32B66C).withOpacity(0.99),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  '(A.I.)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  gradientDirection: GradientDirection.ttb,
                  colors: <Color>[
                    const Color(0xffD19E22).withOpacity(0.8),
                    const Color(0xff32B66C).withOpacity(0.99),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w, right: 16.w),
              child: Text(
                'Get ready for an interactive experience unlike any other. Create trivia questions, get random pop culture and cannabis news to talk about, and connect your users to each other using the Homie Connect, all within the live group sesh. This AI is a fa sho Game Changer.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xffB3B3B3),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 40.h,
              child: GenericButton(
                voidCallBack: () {
                  Get.to(() => const ExploreNow());
                },
                buttonText: 'Explore Now',
                isBorder: false,
                isGradients: true,
                textColor: AppColors.whiteColor,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
