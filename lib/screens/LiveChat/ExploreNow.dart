import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/screens/LiveChat/Homie.dart';
import 'package:green_house_app/screens/LiveChat/QuestionAnswerSection.dart';
import 'package:green_house_app/screens/LiveChat/ScreenShare.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ExploreNow extends StatelessWidget {
  const ExploreNow({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/exploreNow.png",
              height: 160.h,
              width: 160.w,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  'Explore Unparalleled',
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
                  'Interaction',
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
            //1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const QuestionAnswerSection());
                  },
                  child: Container(
                    height: 148.h,
                    width: 159.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.h),
                      ),
                      color: const Color(0xff383838),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 72.h,
                          width: 72.w,
                          padding: EdgeInsets.only(left: 16.w, right: 16.w),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/answer 1.png",
                              height: 32.h,
                              width: 32.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Trivia",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Container(
                  height: 148.h,
                  width: 159.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.h),
                    ),
                    color: const Color(0xff383838),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 72.h,
                        width: 72.w,
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/conversation 1.png",
                            height: 32.h,
                            width: 32.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Convo Starters",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //2
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const Homie());
                  },
                  child: Container(
                    height: 148.h,
                    width: 159.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.h),
                      ),
                      color: const Color(0xff383838),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 72.h,
                          width: 72.w,
                          padding: EdgeInsets.only(left: 16.w, right: 16.w),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/people 1.png",
                              height: 32.h,
                              width: 32.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Homie Connect",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Container(
                  height: 148.h,
                  width: 159.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.h),
                    ),
                    color: const Color(0xff383838),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 72.h,
                        width: 72.w,
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/deposit 1.png",
                            height: 32.h,
                            width: 32.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Pay Out",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //3
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ScreenShare());
                  },
                  child: Container(
                    height: 148.h,
                    width: 159.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.h),
                      ),
                      color: const Color(0xff383838),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 72.h,
                          width: 72.w,
                          padding: EdgeInsets.only(left: 16.w, right: 16.w),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/Out.png",
                              height: 32.h,
                              width: 32.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Screen Share",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 148.h,
                  width: 159.w,
                ),
              ],
            ),
            //
          ],
        ),
      ),
    );
  }
}
