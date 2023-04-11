import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_bottom_sheet.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 10.w,
          ),
          child: SizedBox(
            width: 80.w,
            height: 40.h,
            child: Image.asset(
              AppImages.appLogo,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10.w,
            ),
            child: GestureDetector(
              onTap: () => Get.toNamed(
                AppRoutes.chatScreen,
              ),
              child: SvgPicture.asset(
                AppImages.messageIcon,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Feed Backs
              Column(
                children: List.generate(
                    5,
                    (index) => Container(
                          padding: EdgeInsets.only(
                            top: 10.h,
                          ),
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              Padding(
                                padding: REdgeInsets.symmetric(
                                  horizontal: 16.w,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 40.h,
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: AppColors.primaryColor,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            AppImages.userFeedImage,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'World Selfish',
                                              style: kSubtitleregular14,
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Text(
                                              '2 days ago',
                                              style: kCaptionregular12.copyWith(
                                                color: AppColors.blackShade300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.bottomSheet(postBottomSheet());
                                      },
                                      child: const Icon(
                                        Icons.more_horiz,
                                        color: AppColors.whiteColor,
                                        size: 35,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // image
                              SizedBox(
                                height: 5.h,
                              ),

                              Image.asset(
                                AppImages.postImage,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Padding(
                                padding: REdgeInsets.only(
                                  left: 12.w,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              AppImages.likeIconOutlined,
                                            ),
                                            SizedBox(
                                              width: 8.w,
                                            ),
                                            Text(
                                              '578',
                                              style: kCaptionregular12,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        GestureDetector(
                                          onTap: () => showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            backgroundColor: AppColors.blackColorB4Shade,
                                            builder: (context) => Container(
                                              height: MediaQuery.of(context).size.height * 0.75.h,
                                              decoration: const BoxDecoration(
                                                color: AppColors.blackColorB4Shade,
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                      height: 4.h,
                                                      width: 44.w,
                                                      decoration: BoxDecoration(
                                                        color: AppColors.primaryColor,
                                                        borderRadius: BorderRadius.circular(
                                                          4.r,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        '579 comments',
                                                        style: kBodyregular16,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () => Navigator.pop(context),
                                                        child: const Icon(
                                                          Icons.close,
                                                          color: AppColors.whiteColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            AppImages.commentImage,
                                                          ),
                                                          SizedBox(
                                                            width: 12.w,
                                                          ),
                                                          Text(
                                                            'Devon Lane',
                                                            style: kSubtitleregular14.copyWith(
                                                              color: AppColors.secondaryColor,
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 24.h,
                                                        width: 70.w,
                                                        child: GenericButton(
                                                          voidCallBack: () {},
                                                          buttonText: 'Follow',
                                                          isGradients: false,
                                                          isBorder: true,
                                                          textColor: AppColors.secondaryColor,
                                                          backgroundColor: Colors.transparent,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 16.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        AppImages.commentImage2,
                                                      ),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            'Theresa Webb',
                                                            style: kCaptionregular10.copyWith(color: AppColors.blackShade200),
                                                          ),
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Now that’s a skill very talented',
                                                                  style: kCaptionregular10.copyWith(
                                                                    color: AppColors.blackShade400,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: '20 Sep 2021',
                                                                  style: kCaptionregular10.copyWith(
                                                                    color: AppColors.blackShade500,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 50.w,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '1.2k',
                                                            style: kCaptionregular12,
                                                          ),
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          SvgPicture.asset(
                                                            AppImages.likeIconOutlined,
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                AppImages.commentIcon,
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Text(
                                                '578',
                                                style: kCaptionregular12,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'World Selfish',
                                          style: kSubtitleregular14.copyWith(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Hey! Roll one. Sit back. Relax.',
                                          style: kCaptionregular12,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'View all 4 comments',
                                      style: kCaptionregular12,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
