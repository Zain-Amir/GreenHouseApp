import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class DiscoverPeople extends StatelessWidget {
  DiscoverPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          backgroundColor: AppColors.blackColor,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.whiteColor,
            ),
          ),
          title: Text(
            'Discover people',
            style: kBodyregular16,
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: AppColors.primaryColor,
            unselectedLabelColor: AppColors.blackShade500,
            labelColor: AppColors.primaryColor,
            labelStyle: kBodyregular16.copyWith(
              color: AppColors.primaryColor,
            ),
            indicatorWeight: 3.0,
            tabs: const [
              Tab(
                text: 'Smokers',
              ),
              Tab(
                text: 'Dabbers',
              ),
              Tab(
                text: 'Edi Eaters',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                        10,
                        (index) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 10.h,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(AppImages.chatWithUser),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mike19ZayT',
                                                style:
                                                    kCaptionregular10.copyWith(
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                              Text(
                                                'Michael Jordan',
                                                style: kCaptionregular10,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 24.h,
                                            width: 76.w,
                                            child: GenericButton(
                                              voidCallBack: () {},
                                              buttonText: 'Follow',
                                              isGradients: true,
                                              isBorder: false,
                                              textColor: AppColors.whiteColor,
                                            ),
                                          ),
                                          Icon(
                                            Icons.close,
                                            color: AppColors.whiteColor,
                                            size: 26.h,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  const Divider(
                                    color: AppColors.blackColorB3Shade,
                                    height: 1,
                                  )
                                ],
                              ),
                            ))),
              ),
            ),
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                        10,
                        (index) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 10.h,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(AppImages.chatWithUser),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mike19ZayT',
                                                style:
                                                    kCaptionregular10.copyWith(
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                              Text(
                                                'Michael Jordan',
                                                style: kCaptionregular10,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 24.h,
                                            width: 76.w,
                                            child: GenericButton(
                                              voidCallBack: () {},
                                              buttonText: 'Follow',
                                              isGradients: true,
                                              isBorder: false,
                                              textColor: AppColors.whiteColor,
                                            ),
                                          ),
                                          Icon(
                                            Icons.close,
                                            color: AppColors.whiteColor,
                                            size: 26.h,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Divider(
                                    color: AppColors.blackColorB3Shade,
                                    height: 1,
                                  )
                                ],
                              ),
                            ))),
              ),
            ),
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                        10,
                        (index) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 10.h,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(AppImages.chatWithUser),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mike19ZayT',
                                                style:
                                                    kCaptionregular10.copyWith(
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                              Text(
                                                'Michael Jordan',
                                                style: kCaptionregular10,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 24.h,
                                            width: 76.w,
                                            child: GenericButton(
                                              voidCallBack: () {},
                                              buttonText: 'Follow',
                                              isGradients: true,
                                              isBorder: false,
                                              textColor: AppColors.whiteColor,
                                            ),
                                          ),
                                          Icon(
                                            Icons.close,
                                            color: AppColors.whiteColor,
                                            size: 26.h,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Divider(
                                    color: AppColors.blackColorB3Shade,
                                    height: 1,
                                  )
                                ],
                              ),
                            ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
