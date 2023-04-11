import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/chat_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Chat',
          style: kBodyregular16,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: AppColors.whiteColor,
              size: 24.w,
            ),
          ),
        ],
      ),
      body: GetBuilder<ChatController>(builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 36.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: AppColors.blackColorB4Shade,
                borderRadius: BorderRadius.circular(
                  36.r,
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(
                    height: 8.h,
                    width: 10.w,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          hintStyle: kBodyregular16.copyWith(
                            color: AppColors.blackShade500,
                          ),
                          hintText: 'Search',
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            controller.isChat!
                ? GestureDetector(
                    onTap: () => Get.toNamed(
                      AppRoutes.conservationScreen,
                    ),
                    child: Container(
                      height: 48.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppImages.chatUser,
                              ),
                              SizedBox(
                                width: 8.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cameron Williamson',
                                    style: kSubtitleregular14,
                                  ),
                                  Text(
                                    'I prefer vaping over smoking...',
                                    style: kCaptionregular12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '3m ago',
                                style: kCaptionregular10,
                              ),
                              Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                  color: AppColors.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '12',
                                    style: kCaptionregular10,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding: REdgeInsets.symmetric(
                      horizontal: 14.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 132.h,
                        ),
                        Text(
                          'Message your Friends',
                          textAlign: TextAlign.center,
                          style: kTitleregular28,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Please follow your Friends or Send Message to your following Friends',
                          textAlign: TextAlign.center,
                          style: kBodyregular16.copyWith(
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 163.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discover people',
                              style: kBodyregular16,
                            ),
                            GestureDetector(
                              onTap: () => Get.toNamed(
                                AppRoutes.discoverPeople,
                              ),
                              child: Text(
                                'See all',
                                style: kBodyregular16.copyWith(
                                    color: AppColors.secondaryColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 129.w,
                            decoration: BoxDecoration(
                              color: AppColors.blackColorB4Shade,
                              borderRadius: BorderRadius.circular(
                                8.r,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 6.h,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(
                                    AppImages.crossIcon,
                                  ),
                                ),
                                Image.asset(
                                  AppImages.discoverImage,
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  'OC Smoker club',
                                  style: kCaptionregular12,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  'Followed by 4+',
                                  style: kCaptionregular10.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                SizedBox(
                                  height: 24.h,
                                  width: 97.w,
                                  child: GenericButton(
                                    voidCallBack: () =>
                                        controller.updateIsChat(),
                                    buttonText: 'Follow',
                                    textColor: AppColors.whiteColor,
                                    isGradients: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
          ],
        );
      }),
    );
  }
}
