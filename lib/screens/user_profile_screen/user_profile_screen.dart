import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/user_profile_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:green_house_app/routes/app_routes.dart';

class UserProfile extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  UserProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(builder: (context) {
        final index = DefaultTabController.of(context).index;
        return Scaffold(
          backgroundColor: AppColors.blackColor,
          body: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: GetBuilder<UserProfileController>(builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 188.h,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.postImage,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: AppColors.blackColorB4Shade,
                              context: context,
                              builder: (context) => SizedBox(
                                height: 213.h,
                                width: double.maxFinite,
                                child: Padding(
                                  padding: REdgeInsets.symmetric(
                                    horizontal: 16.w,
                                  ),
                                  child: Column(
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
                                      SizedBox(
                                        height: 24.h,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Daisy Simmons',
                                            style: kBodyregular16,
                                          ),
                                          Icon(
                                            Icons.close,
                                            size: 20.w,
                                            color: AppColors.whiteColor,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 28.h,
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.toNamed(
                                          AppRoutes.settingScreen,
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              AppImages.settingIcon,
                                            ),
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Text(
                                              'Settings',
                                              style: kSubtitleregular14,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.toNamed(
                                          AppRoutes.editProfileScreen,
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              AppImages.editIconWithOurColor,
                                            ),
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Text(
                                              'Edit Profile',
                                              style: kSubtitleregular14,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.more_vert,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 140.h,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100.h,
                              width: 100.w,
                              child: Image.asset(
                                AppImages.userImageProfile,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 40.h,
                                left: 30.w,
                              ),
                              width: 240.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0',
                                        style: kBodyregular16.copyWith(
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                      Text(
                                        'Following',
                                        style: kCaptionregular12.copyWith(
                                          color: AppColors.blackShade500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '124K',
                                        style: kBodyregular16.copyWith(
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                      Text(
                                        'Followers',
                                        style: kCaptionregular12.copyWith(
                                          color: AppColors.blackShade500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '999',
                                        style: kBodyregular16.copyWith(
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                      Text(
                                        'Posts',
                                        style: kCaptionregular12.copyWith(
                                          color: AppColors.blackShade500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Daisy Simmons',
                        style: kBodyregular16,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 24.h,
                        width: 24.w,
                        decoration: BoxDecoration(gradient: primaryGradient, shape: BoxShape.circle),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.dabberIconWithoutColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    '@DaisyA1',
                    style: kSubtitleregular14.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Favorite Strain:',
                          style: kBodyregular16.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'OG Sherbert',
                          style: kBodyregular16.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'ROLL ONE AND GET LIT WITH US',
                    style: kBodyregular16,
                  ),

                  SizedBox(
                    height: 40.h,
                    width: double.maxFinite,
                    child: TabBar(
                      onTap: (value) => controller.updateActive(),
                      indicatorColor: AppColors.primaryColor,
                      tabs: [
                        Tab(
                          icon: SvgPicture.asset(
                            controller.isActive! ? AppImages.videoIconWithColor : AppImages.videoIconWithOutColor,
                          ),
                        ),
                        Tab(
                          icon: SvgPicture.asset(
                            controller.isActive! ? AppImages.imageIcon : AppImages.imageIconWithColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 800,
                    child: TabBarView(children: [
                      Container(
                        child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 8,
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 60,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 140.h,
                                width: 120.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.profileVideo,
                                  ),
                                )),
                              );
                            }),
                      ),
                      Container(
                        child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 8,
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 140.h,
                                width: 120.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      AppImages.profileImage,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ]),
                  )

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () => controller.updateActive(),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           SvgPicture.asset(
                  //             controller.isActive!
                  //                 ? AppImages.videoIconWithColor
                  //                 : AppImages.videoIconWithOutColor,
                  //           ),
                  //           SizedBox(
                  //             height: 2.h,
                  //           ),
                  //           controller.isActive!
                  //               ? SizedBox(
                  //                   width: 188.w,
                  //                   child: const Divider(
                  //                     height: 1,
                  //                     color: AppColors.primaryColor,
                  //                   ),
                  //                 )
                  //               : SizedBox(),
                  //         ],
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         controller.updateActive();
                  //       },
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           SvgPicture.asset(
                  //             controller.isActive!
                  //                 ? AppImages.imageIcon
                  //                 : AppImages.imageIconWithColor,
                  //           ),
                  //           SizedBox(
                  //             height: 2.h,
                  //           ),
                  //           controller.isActive!
                  //               ? SizedBox()
                  //               : SizedBox(
                  //                   width: 188.w,
                  //                   child: const Divider(
                  //                     height: 1,
                  //                     color: AppColors.primaryColor,
                  //                   ),
                  //                 )
                  //         ],
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // controller.isActive!
                  //     ? GridView.builder(
                  //         shrinkWrap: true,
                  //         gridDelegate:
                  //             const SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 3,
                  //           mainAxisSpacing: 12,
                  //           crossAxisSpacing: 8,
                  //         ),
                  //         physics: const NeverScrollableScrollPhysics(),
                  //         itemCount: 6,
                  //         itemBuilder: (context, index) {
                  //           return Container(
                  //             height: 140.h,
                  //             width: 120.w,
                  //             decoration: BoxDecoration(
                  //                 image: DecorationImage(
                  //               image: AssetImage(
                  //                 AppImages.profileVideo,
                  //               ),
                  //             )),
                  //           );
                  //         })
                  //     : GridView.builder(
                  //         shrinkWrap: true,
                  //         gridDelegate:
                  //             const SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 3,
                  //           mainAxisSpacing: 12,
                  //           crossAxisSpacing: 8,
                  //         ),
                  //         physics: const NeverScrollableScrollPhysics(),
                  //         itemCount: 6,
                  //         itemBuilder: (context, index) {
                  //           return Container(
                  //             height: 140.h,
                  //             width: 120.w,
                  //             decoration: BoxDecoration(
                  //               image: DecorationImage(
                  //                 image: AssetImage(
                  //                   AppImages.profileImage,
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //         }),
                ],
              );
            }),
          ),
        );
      }),
    );
  }
}
