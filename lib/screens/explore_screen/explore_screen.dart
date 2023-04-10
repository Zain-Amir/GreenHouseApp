import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_bottom_sheet.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 10.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80.w,
                    height: 34.h,
                    child: Image.asset(
                      AppImages.appLogo,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(
                      AppRoutes.chatScreen,
                    ),
                    child: SvgPicture.asset(
                      AppImages.messageIcon,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: REdgeInsets.symmetric(
                horizontal: 16.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: kSubtitleregular14,
                      ),
                      Text(
                        'See all',
                        style: kSubtitleregular14.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 193.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                          AppImages.upcommingEvent,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: REdgeInsets.symmetric(
                        horizontal: 12.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          SvgPicture.asset(
                            AppImages.diamond,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tree House',
                                style: kBodyregular16,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                '20 December, 09:00 PM',
                                style: kCaptionregular12,
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AppImages.locationWithoutColorIcon,
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    'Phoenix, Texas',
                                    style: kCaptionregular12,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              SizedBox(
                                width: 138.w,
                                height: 32.h,
                                child: GenericButton(
                                  voidCallBack: () {},
                                  buttonText: 'Reserve Spot',
                                  isGradients: true,
                                  isBorder: false,
                                  textColor: AppColors.whiteColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Live Around  Greenhouse',
                        style: kSubtitleregular14,
                      ),
                      Text(
                        'See all',
                        style: kSubtitleregular14.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GridView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    cacheExtent: 10000,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 16.0,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () => Get.bottomSheet(
                                liveEventsAroundBottomSheet(context),
                              ),
                          child: Container(
                            height: 148.h,
                            width: 163.w,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                  AppImages.eventImage,
                                ),
                              ),
                              gradient: eventGradient,
                            ),
                            child: Padding(
                              padding: REdgeInsets.symmetric(
                                horizontal: 8.w,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '@Zion\$\$\$',
                                        style: kCaptionregular12.copyWith(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 10.h,
                                            width: 10.h,
                                            child: SvgPicture.asset(
                                              AppImages.selectedProfile,
                                            ),
                                          ),
                                          Text(
                                            '1.2K',
                                            style: kCaptionregular12,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                ],
                              ),
                            ),
                          ));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
