import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';

class Help_Faqs extends StatelessWidget {
  const Help_Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          Container(
              height: 248.h,
              width: 375.w,
              color: const Color(0xff32B66C),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: const Color(0xfffffffff),
                            size: 20.sp,
                          ),
                        ),
                        onTap: () {
                          Get.back();
                        },
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/GreenHouse Logo White.png",
                            height: 40.h,
                            width: 94.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    "How can we help you today?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 36.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.h),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0.w),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/search.png",
                            height: 16.h,
                            width: 16.w,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Search",
                            style: TextStyle(
                              color: const Color(0xffBBBBBB),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0.w),
                        child: Text(
                          "for example: question 1,  question 2 etc",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) {
                return ExpansionTile(
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  textColor: Colors.white,
                  title: Text(
                    "Loream ipsum doler",
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0.w, right: 16.w),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                              style: TextStyle(
                                color: const Color(0xffB3B3B3),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16.0.w, right: 16.w, top: 8.h),
                                child: Text(
                                  "Tap to view",
                                  style: TextStyle(
                                    color: const Color(0xffDAA930),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: 96.h,
            width: 343.w,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 1.35,
              left: 16.w,
              right: 16.w,
            ),
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            decoration: BoxDecoration(
              color: const Color(0xff383838),
              borderRadius: BorderRadius.all(
                Radius.circular(10.h),
              ),
            ),
            child: Row(
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
                      "assets/images/email 1.png",
                      height: 32.h,
                      width: 32.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 18.w,
                ),
                Text(
                  "Email Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
