import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_button.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: Text(
          'Notification (04)',
          style: kBodyregular16,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 19.w,
              ),
              child: Text(
                'Today',
                style: kSubtitleregular14.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 6,
              ),
              child: ListTile(
                leading: Image.asset(
                  AppImages.notificationScreenImage,
                ),
                title: Text(
                  'Dennis Nedry has requested to Follow you.  ',
                  style: kSubtitleregular14.copyWith(
                      color: AppColors.blackShade400),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '9:42 AM',
                      style: kCaptionregular10.copyWith(
                        color: AppColors.blackShade500,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 32.h,
                          width: 116.w,
                          child: GenericButton(
                            voidCallBack: () {},
                            buttonText: 'Accept',
                            isGradients: true,
                            isBorder: false,
                            textColor: AppColors.whiteColor,
                          ),
                        ),
                        SizedBox(
                          width: 16.h,
                        ),
                        SizedBox(
                          height: 32.h,
                          width: 116.w,
                          child: GenericButton(
                            voidCallBack: () {},
                            buttonText: 'Reject',
                            isGradients: false,
                            backgroundColor: Colors.transparent,
                            isBorder: true,
                            textColor: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 6,
              ),
              child: ListTile(
                leading: Image.asset(
                  AppImages.notificationScreenImage,
                ),
                title: Text(
                  'Dennis Nedry has requested to Follow you.  ',
                  style: kSubtitleregular14.copyWith(
                      color: AppColors.blackShade400),
                ),
                subtitle: Text(
                  '9:42 AM',
                  style: kCaptionregular10.copyWith(
                    color: AppColors.blackShade500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 6,
              ),
              child: ListTile(
                leading: Image.asset(
                  AppImages.notificationScreenImage,
                ),
                title: Text(
                  'Dennis Nedry has requested to Follow you.  ',
                  style: kSubtitleregular14.copyWith(
                      color: AppColors.blackShade400),
                ),
                subtitle: Text(
                  '9:42 AM',
                  style: kCaptionregular10.copyWith(
                    color: AppColors.blackShade500,
                  ),
                ),
              ),
            ),

            // This Week Notification

            Padding(
              padding: EdgeInsets.only(
                left: 19.w,
              ),
              child: Text(
                'This Week',
                style: kSubtitleregular14
                    .copyWith(color: AppColors.blackShade400)
                    .copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 6,
              ),
              child: ListTile(
                leading: Image.asset(
                  AppImages.notificationScreenImage,
                ),
                title: Text(
                  'Dennis Nedry is hosting a LIVE Chat',
                  style: kSubtitleregular14.copyWith(
                      color: AppColors.blackShade400),
                ),
                subtitle: Text(
                  'Last Wednesday at 9:42 AM',
                  style: kCaptionregular10.copyWith(
                    color: AppColors.blackShade500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 6,
              ),
              child: ListTile(
                leading: Image.asset(
                  AppImages.notificationScreenImage,
                ),
                title: Text(
                  'Dennis Nedry is hosting a LIVE Chat',
                  style: kSubtitleregular14.copyWith(
                      color: AppColors.blackShade400),
                ),
                subtitle: Text(
                  'Last Wednesday at 9:42 AM',
                  style: kCaptionregular10.copyWith(
                    color: AppColors.blackShade500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 6,
              ),
              child: ListTile(
                leading: Image.asset(
                  AppImages.notificationScreenImage,
                ),
                title: Text(
                  'Dennis Nedry is hosting a LIVE Chat',
                  style: kSubtitleregular14.copyWith(
                      color: AppColors.blackShade400),
                ),
                subtitle: Text(
                  'Last Wednesday at 9:42 AM',
                  style: kCaptionregular10.copyWith(
                    color: AppColors.blackShade500,
                  ),
                ),
              ),
            ),

            // This Month Notification
            Padding(
              padding: EdgeInsets.only(
                left: 19.w,
              ),
              child: Text(
                'This month',
                style: kSubtitleregular14
                    .copyWith(color: AppColors.blackShade400)
                    .copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 6,
              ),
              child: ListTile(
                leading: Image.asset(
                  AppImages.notificationScreenImage,
                ),
                title: Text(
                  'Dennis Nedry Liked Your Video.  ',
                  style: kSubtitleregular14.copyWith(
                    color: AppColors.blackShade400,
                  ),
                ),
                subtitle: Text(
                  'Last Wednesday at 9:42 AM',
                  style: kCaptionregular10.copyWith(
                    color: AppColors.blackShade500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
