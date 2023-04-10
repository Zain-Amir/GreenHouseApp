import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';

class ScreenShareEnds extends StatefulWidget {
  const ScreenShareEnds({super.key});

  @override
  State<ScreenShareEnds> createState() => _ScreenShareState();
}

class _ScreenShareState extends State<ScreenShareEnds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Screen Share',
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientText(
                'Share your Screen',
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
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 48.h,
                  width: 48.w,
                  padding: EdgeInsets.only(left: 16.w, right: 16.w),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff383838),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/mute.png",
                      height: 32.h,
                      width: 32.w,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Share Device audio: On",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "Stop Sharing Screen Press End",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 313.h,
                  width: 313.w,
                  child: Image.asset(
                    "assets/images/redborder.png",
                  ),
                ),
                Image.asset(
                  "assets/images/end.png",
                  height: 247.h,
                  width: 245.w,
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
