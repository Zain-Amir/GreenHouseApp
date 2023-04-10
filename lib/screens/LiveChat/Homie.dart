import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';

class Homie extends StatefulWidget {
  const Homie({super.key});

  @override
  State<Homie> createState() => _HomieState();
}

class _HomieState extends State<Homie> {
  bool isStart = false;
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
        children: [
          SizedBox(
            height: 24.h,
          ),
          GradientText(
            'Tap to connect the ',
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
          GradientText(
            'audience to each other ',
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
          SizedBox(
            height: 47.h,
          ),
          Text(
            "You and the audience will answer 15 question and you will see your top 3 connection after",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 28.h,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isStart = true;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 313.h,
                  width: 313.w,
                  child: Image.asset(
                    "assets/images/greenborder.png",
                  ),
                ),
                Image.asset(
                  isStart ? "assets/images/started.png" : "assets/images/start.png",
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
