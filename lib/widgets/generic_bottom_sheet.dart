import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:green_house_app/controllers/payment_controller.dart';
import 'package:green_house_app/models/payment_type_model.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

// Create Post Bottom Sheet on Home screen add click
BottomSheet createPost() {
  return BottomSheet(
    backgroundColor: AppColors.blackColor,
    onClosing: () {},
    builder: (context) => Container(
      height: 213.h,
      decoration: BoxDecoration(
        color: AppColors.blackColorB4Shade,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            24.r,
          ),
          topRight: Radius.circular(
            24.r,
          ),
        ),
      ),
      child: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 12.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 4.h,
              width: 44.w,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(
                  4.r,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.create,
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
              height: 24.h,
            ),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRoutes.createPost,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppImages.imageIcon,
                  ),
                  SizedBox(
                    width: 8.h,
                  ),
                  Text(
                    AppString.createPost,
                    style: kBodyregular16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRoutes.createRoom,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppImages.goLiveIcon,
                  ),
                  SizedBox(
                    width: 8.h,
                  ),
                  Text(
                    AppString.goLive,
                    style: kBodyregular16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// Post Bottom On more verts

Container postBottomSheet() {
  return Container(
    height: 250.h,
    padding: EdgeInsets.only(
      left: 24.w,
    ),
    decoration: BoxDecoration(
      color: AppColors.blackColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          24.r,
        ),
        topRight: Radius.circular(
          24.r,
        ),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Center(
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
          height: 13.h,
        ),
        Text(
          'Share',
          style: kSubtitleregular14,
        ),
        SizedBox(
          height: 32.h,
        ),
        Text(
          'Not Interested',
          style: kSubtitleregular14,
        ),
        SizedBox(
          height: 32.h,
        ),
        Text(
          'Copy Link',
          style: kSubtitleregular14,
        ),
        SizedBox(
          height: 32.h,
        ),
        Text(
          'Report',
          style: kSubtitleregular14,
        ),
      ],
    ),
  );
}

// Create New Post Bottom Sheet for privacy
BottomSheet newPostPrivacyBottomSheet() {
  return BottomSheet(
    backgroundColor: AppColors.blackColor,
    onClosing: () {},
    builder: (context) => Container(
      height: 213.h,
      decoration: BoxDecoration(
        color: AppColors.blackColorB4Shade,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            24.r,
          ),
          topRight: Radius.circular(
            24.r,
          ),
        ),
      ),
      child: Padding(
        padding: REdgeInsets.only(
          left: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
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
              height: 13.h,
            ),
            Text(
              'Public',
              style: kSubtitleregular14,
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Friends',
              style: kSubtitleregular14,
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Friends of Friendws',
              style: kSubtitleregular14,
            ),
          ],
        ),
      ),
    ),
  );
}

// Conservation Menu Bottom Sheet

BottomSheet conservationMenuBottomSheet() {
  return BottomSheet(
    backgroundColor: AppColors.blackColorB4Shade,
    onClosing: () {},
    builder: (context) => Container(
      height: 250.h,
      padding: EdgeInsets.only(
        left: 20.w,
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
          SizedBox(
            height: 13.h,
          ),
          Text(
            'Delete',
            style: kSubtitleregular14,
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            'View Profile',
            style: kSubtitleregular14,
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            'Block',
            style: kSubtitleregular14,
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            'Report',
            style: kSubtitleregular14,
          ),
        ],
      ),
    ),
  );
}

// Create Room Privacy Bottom Sheet
BottomSheet createRoomPrivacyBottomSheet() {
  return BottomSheet(
    backgroundColor: AppColors.blackColor,
    onClosing: () {},
    builder: (context) => Container(
      height: 213.h,
      decoration: BoxDecoration(
        color: AppColors.blackColorB4Shade,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            24.r,
          ),
          topRight: Radius.circular(
            24.r,
          ),
        ),
      ),
      child: Padding(
        padding: REdgeInsets.only(
          left: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
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
              height: 13.h,
            ),
            Text(
              'Public',
              style: kSubtitleregular14,
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Friends',
              style: kSubtitleregular14,
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Friends of Friendws',
              style: kSubtitleregular14,
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Added Members Only',
              style: kSubtitleregular14,
            ),
          ],
        ),
      ),
    ),
  );
}

// Live Events around Bottom  sheet
liveEventsAroundBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.blackColorB4Shade,
    builder: (context) => Flexible(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: BoxDecoration(
          color: AppColors.blackColorB4Shade,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              24.r,
            ),
            topRight: Radius.circular(
              24.r,
            ),
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
                    ' Sesh With The 3 Amigos',
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
              SizedBox(
                height: 12.h,
              ),
              Image.asset(
                AppImages.postImage,
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.locationIcon,
                  ),
                  Text(
                    'Phoenix, Texas',
                    style: kCaptionregular12,
                  )
                ],
              ),

              // Here is Error not fixig
              SizedBox(
                height: 3.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Ending Soon',
                      style: kCaptionregular10.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    SvgPicture.asset(
                      AppImages.goLiveIconWithColor,
                    ),
                    SizedBox(width: 8.w),
                    SizedBox(
                      height: 24.h,
                      width: 59.w,
                      child: GenericButton(
                        voidCallBack: () {},
                        buttonText: 'Paid',
                        isGradients: true,
                        isBorder: false,
                        textColor: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.calendarWithColor,
                  ),
                  Text(
                    'December 20th, 06:00 PM',
                    style: kCaptionregular12,
                  )
                ],
              ),

              SizedBox(
                height: 12.h,
              ),

              Row(
                children: [
                  Image.asset(AppImages.chatWithUser),
                  SizedBox(
                    width: 15.h,
                  ),
                  Text(
                    'Brad Schiff and 32 Others are Inside',
                    style: kCaptionregular12,
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Divider(
                color: AppColors.blackShade900,
                height: 1.h,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Description',
                style:
                    kSubtitleregular14.copyWith(color: AppColors.primaryColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                width: 334.w,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                  style: kCaptionregular12,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              GenericButton(
                voidCallBack: () {
                  Navigator.pop(context);
                  paymentBottomSheet(context);
                },
                buttonText: 'Enter Room',
                isGradients: true,
                isBorder: false,
                textColor: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// Payment Bottom Sheet

paymentBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.blackColorB4Shade,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.85,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.blackColorB4Shade,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            24.r,
          ),
          topRight: Radius.circular(
            24.r,
          ),
        ),
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
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Enter code (if any)',
            style: kBodyregular16,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 35.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColors.blackShade900,
              border: GradientBoxBorder(gradient: primaryGradient),
              borderRadius: BorderRadius.circular(
                8.r,
              ),
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select Payment Method',
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
          SizedBox(
            height: 13.h,
          ),
          GetBuilder<PaymentController>(builder: (controller) {
            return Column(
              children: List.generate(
                paymentTypeContent.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    top: 8.h,
                  ),
                  child: GestureDetector(
                    onTap: () => controller.updateIndex(
                      value: index,
                    ),
                    child: Container(
                      width: double.maxFinite,
                      height: 55.h,
                      decoration: BoxDecoration(
                          border: controller.selectedIndex == index
                              ? GradientBoxBorder(
                                  gradient: primaryGradient,
                                )
                              : Border.all(
                                  color: Colors.transparent,
                                ),
                          borderRadius: BorderRadius.circular(
                            8.r,
                          )),
                      child: Padding(
                        padding: REdgeInsets.symmetric(
                          horizontal: 10.w,
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
                                    color: AppColors.blackColor,
                                    borderRadius: BorderRadius.circular(
                                      4.r,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      paymentTypeContent[index].imagePath,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                controller.selectedIndex == index
                                    ? Text(
                                        paymentTypeContent[index].name,
                                        style: kBodyregular16.copyWith(
                                          color: AppColors.secondaryColor,
                                        ),
                                      )
                                    : Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            paymentTypeContent[index].name,
                                            style: kBodyregular16,
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text(
                                            'Balance Available :       \$${paymentTypeContent[index].price}',
                                            style: kBodyregular16,
                                          ),
                                        ],
                                      ),
                              ],
                            ),
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                  width: 2,
                                ),
                              ),
                              child: controller.selectedIndex == index
                                  ? Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Container(
                                        height: 14.h,
                                        width: 14.h,
                                        decoration: const BoxDecoration(
                                          color: AppColors.primaryColor,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    )
                                  : SizedBox(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
          SizedBox(
            height: 12.h,
          ),
          Divider(
            color: AppColors.blackShade900,
            height: 1.h,
          ),
          Spacer(),
          GenericButton(
            voidCallBack: () {
              Navigator.pop(context);
              showModalBottomSheet(
                backgroundColor: AppColors.blackColorB4Shade,
                context: context,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height * 0.75.h,
                  decoration: BoxDecoration(
                    color: AppColors.blackColorB4Shade,
                  ),
                  child: GetBuilder<PaymentController>(builder: (controller) {
                    return Column(
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
                        SizedBox(
                          height: 13.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add Cards',
                              style: kBodyregular16,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.close,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            // GenericTextFormField(
                            //     hintText: 'Card Number',
                            //     controller: controller.cardNumberController,
                            //     validator: requiredValidator,
                            //     onEditingComplete: () {}),
                            // GenericTextFormField(
                            //     hintText: 'Expiry Date',
                            //     controller: controller.expiryDateController,
                            //     validator: requiredValidator,
                            //     onEditingComplete: () {}),
                            // GenericTextFormField(
                            //     hintText: 'CVV',
                            //     controller: controller.cVVController,
                            //     validator: requiredValidator,
                            //     onEditingComplete: () {}),
                            // GenericTextFormField(
                            //     hintText: 'Name of Card',
                            //     controller: controller.cardNameController,
                            //     validator: requiredValidator,
                            //     onEditingComplete: () {}),
                          ],
                        ),
                      ],
                    );
                  }),
                ),
              );
            },
            buttonText: 'Pay \$15 and Enter',
            isGradients: true,
            isBorder: false,
            textColor: AppColors.whiteColor,
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    ),
  );
}
