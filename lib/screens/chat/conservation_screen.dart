import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/screens/chat/components/chat_box.dart';
import 'package:green_house_app/widgets/generic_bottom_sheet.dart';

class ConservationScreen extends StatelessWidget {
  const ConservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        leadingWidth: 200.w,
        leading: Padding(
          padding: REdgeInsets.only(
            left: 12.w,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.whiteColor,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    AppImages.chatWithUser,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Cloud007',
                    style: kBodyregular16,
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.bottomSheet(conservationMenuBottomSheet()),
            icon: Icon(
              Icons.more_vert,
              color: AppColors.whiteColor,
              size: 24.w,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 30.h,
                    width: 81.w,
                    decoration: BoxDecoration(
                      color: AppColors.blackShade800,
                      borderRadius: BorderRadius.circular(
                        40.r,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '10:49 AM',
                        style: kSubtitleregular14.copyWith(
                          color: AppColors.blackColorB4Shade,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ChatBox(
                  messageText:
                      'Hey Megalodon, last week me and my friend have watch your tips video 😊',
                  width: 251.w,
                  timeDate: '1:45 PM',
                ),
                ChatBox(
                  messageText: 'Hello Key, Thanks!',
                  isSender: true,
                  backgroundColor: AppColors.primaryColor,
                  width: 171.w,
                  timeDate: '2:01 PM',
                ),
                ChatBox(
                  messageText: 'Hello Key, Thanks!',
                  isSender: true,
                  backgroundColor: AppColors.primaryColor,
                  width: 171.w,
                  timeDate: '2:01 PM',
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Padding(
              padding: REdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: SizedBox(
                width: 343.w,
                child: const Divider(
                  color: AppColors.blackShade900,
                  height: 1,
                ),
              ),
            ),
            Padding(
              padding: REdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Add comment... ',
                        hintStyle: kSubtitleregular14.copyWith(
                          color: AppColors.blackShade500,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppImages.adSign,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      SvgPicture.asset(
                        AppImages.emoji,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
