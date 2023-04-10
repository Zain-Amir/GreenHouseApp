import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';

class QuestionAnswerSection extends StatefulWidget {
  const QuestionAnswerSection({super.key});

  @override
  State<QuestionAnswerSection> createState() => _QuestionAnswerSectionState();
}

class _QuestionAnswerSectionState extends State<QuestionAnswerSection> {
  int questionCount = 1;
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
          'Trivia',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  'How many questions?',
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
            Container(
              width: 320.w,
              height: 47.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.h),
                ),
                color: const Color(0xff383838),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0.h),
                    child: GestureDetector(
                      onTap: () {
                        if (questionCount > 1) {
                          setState(() {
                            questionCount--;
                          });
                        }
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Icon(
                          Icons.remove,
                          size: 25.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    questionCount.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0.h),
                    child: GestureDetector(
                      onTap: () {
                        if (questionCount >= 1) {
                          setState(() {
                            questionCount++;
                          });
                        }
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Icon(
                          Icons.add,
                          size: 25.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
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
                  "Cannabis",
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
            )
          ],
        ),
      ),
    );
  }
}
