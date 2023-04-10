import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_bottom_sheet.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class CreatePost extends StatelessWidget {
  TextEditingController addLive = TextEditingController();
  final _controller = ValueNotifier<bool>(false);

  CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.whiteColor,
          ),
        ),
        title: Text(
          'New Post',
          style: kBodyregular16,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            Container(
              height: 104.h,
              decoration: BoxDecoration(
                color: AppColors.blackColorB4Shade,
                borderRadius: BorderRadius.circular(
                  8.r,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    AppImages.newPostImage,
                  ),
                  SizedBox(
                    height: 143.h,
                    width: 250.w,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      maxLines: 12,
                      decoration: InputDecoration(
                        hintText: 'Write a Caption....',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        hintStyle: kBodyregular16.copyWith(
                          color: AppColors.blackShade500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            GenericTextFormField(
              hintText: AppString.addLocation,
              controller: addLive,
              validator: requiredValidator,
              onEditingComplete: () {},
              suffixIcon: AppImages.locationIcon,
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.commentIcon,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppString.allowComment,
                      style: kSubtitleregular14,
                    ),
                  ],
                ),
                AdvancedSwitch(
                  controller: _controller,
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.lightGray,
                  activeChild: Text('ON'),
                  inactiveChild: Text('OFF'),
                  borderRadius: BorderRadius.all(const Radius.circular(15)),
                  width: 57.0,
                  height: 31.0,
                  enabled: true,
                  disabledOpacity: 0.5,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () => Get.bottomSheet(newPostPrivacyBottomSheet()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppImages.eyeIcon,
                        height: 24,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppString.whoCanView,
                        style: kSubtitleregular14,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'public',
                        style: kCaptionregular12,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.whiteColor,
                        size: 24,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            GenericButton(
              voidCallBack: () {},
              buttonText: AppString.post,
              isBorder: _controller.value ? false : true,
              isGradients: _controller.value ? true : false,
              backgroundColor:
                  _controller.value ? AppColors.whiteColor : Colors.transparent,
              textColor: _controller.value
                  ? AppColors.whiteColor
                  : AppColors.secondaryColor,
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}
