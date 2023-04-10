import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';

class Conovo_Starters extends StatefulWidget {
  const Conovo_Starters({super.key});

  @override
  State<Conovo_Starters> createState() => Conovo_StartersState();
}

class Conovo_StartersState extends State<Conovo_Starters> {
  int questionCount = 1;
  bool isStart = false;

  bool isChoiceOneSelected = false, isChoiceTwoSelected = false, isChoiceThreeSelected = false, isChoiceFourSelected = false, isChoiceFiveSelected = false, isChoiceSixSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Convo Starters',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Image.asset(
              "assets/images/exploreNow.png",
              height: 160.h,
              width: 160.w,
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  'Choose a topic',
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
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: Container(
                width: 320.w,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.h),
                  ),
                  color: const Color(0xff383838),
                ),
                child: Center(
                  child: Text(
                    "Cannabis",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 320.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.h),
                ),
                color: const Color(0xff383838),
              ),
              child: Center(
                child: Text(
                  "Food",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 320.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.h),
                ),
                color: const Color(0xff383838),
              ),
              child: Center(
                child: Text(
                  "Music",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 320.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.h),
                ),
                color: const Color(0xff383838),
              ),
              child: Center(
                child: Text(
                  "Random",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 320.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.h),
                ),
                color: const Color(0xff383838),
              ),
              child: Center(
                child: Text(
                  "Pop Culture",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Or",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isChoiceSixSelected = true;
                });
              },
              child: Container(
                width: 320.w,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.h),
                  ),
                  color: const Color(0xff383838),
                ),
                child: Center(
                  child: Text(
                    "Type Your Own Topic",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            isChoiceSixSelected
                ? const TextField(
                    decoration: InputDecoration(hintText: "Lorem ipsum dolor"),
                  )
                : Container(),
            SizedBox(
              height: 47.h,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isStart = true;
                });
              },
              child: Image.asset(
                isStart ? "assets/images/started.png" : "assets/images/start.png",
                height: 155.h,
                width: 154.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
