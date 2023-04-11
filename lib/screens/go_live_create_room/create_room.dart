import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/create_room_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/screens/LiveChat/LiveChatMainScreen.dart';
import 'package:green_house_app/widgets/generic_bottom_sheet.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_checkbox.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class CreateRoom extends StatelessWidget {
  CreateRoom({super.key});
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  DateTime dateTime = DateTime.now();

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
          'Create Room',
          style: kBodyregular16,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: GetBuilder<CreateRoomController>(builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Thumbnail Image',
                  style: kBodyregular16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: DottedBorder(
                    color: AppColors.primaryColor,
                    strokeWidth: 2,
                    borderType: BorderType.RRect,
                    child: Container(
                      height: 152.h,
                      width: 152.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppImages.imagePickerImage,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              AppImages.imageIconWithColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                GenericTextFormField(hintText: 'Title', controller: titleController, validator: requiredValidator, onEditingComplete: () {}),
                SizedBox(
                  height: 16.h,
                ),
                GenericTextFormField(hintText: 'Description', controller: descriptionController, validator: requiredValidator, onEditingComplete: () {}),
                SizedBox(
                  height: 16.h,
                ),
                GenericTextFormField(
                  hintText: 'Add Location',
                  controller: locationController,
                  validator: requiredValidator,
                  onEditingComplete: () {},
                  suffixIcon: AppImages.locationIcon,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Add Description Image',
                  style: kBodyregular16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                DottedBorder(
                  color: AppColors.primaryColor,
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  child: Container(
                    height: 152.h,
                    width: 343.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImages.imagePickerImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.imageIconWithColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                GenericTextFormField(
                  hintText: 'Date',
                  controller: locationController,
                  validator: requiredValidator,
                  onEditingComplete: () {},
                  suffixIcon: AppImages.calendar,
                  readOnly: true,
                  onTap: () {
                    showCupertinoModalPopup<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return _buildBottomPicker(
                          CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            backgroundColor: AppColors.blackColorB4Shade,
                            initialDateTime: dateTime,
                            onDateTimeChanged: (DateTime newDateTime) {
                              print(',,,,,,,,,,,,');
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                GenericTextFormField(
                  hintText: 'Start time',
                  controller: locationController,
                  validator: requiredValidator,
                  onEditingComplete: () {},
                  suffixIcon: AppImages.clockIcon,
                  readOnly: true,
                  onTap: () {
                    showCupertinoModalPopup<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return _buildBottomPicker(
                          CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.time,
                            backgroundColor: AppColors.blackColorB4Shade,
                            initialDateTime: dateTime,
                            onDateTimeChanged: (DateTime newDateTime) {
                              print(',,,,,,,,,,,,');
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'The maximum legnth of a session is 2 hours.',
                    style: kCaptionregular12.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                GestureDetector(
                  onTap: () => Get.bottomSheet(
                    BottomSheet(
                      backgroundColor: AppColors.blackColorB3Shade,
                      onClosing: () {},
                      builder: (context) => Container(
                        height: 524.h,
                        decoration: BoxDecoration(
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
                            horizontal: 16.w,
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
                                height: 24.h,
                              ),
                              Text(
                                'Select Members',
                                style: kTitleregular18,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                height: 36.h,
                                width: 343.w,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(
                                    36.r,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.search,
                                      color: AppColors.grayColor,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        keyboardType: TextInputType.text,
                                        style: kBodyregular16.copyWith(
                                          color: AppColors.grayColor,
                                        ),
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
                              Row(
                                children: [
                                  GenericCheckBox(
                                    onTap: () {},
                                    isChecked: true,
                                  ),
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Image.asset(
                                    AppImages.chatWithUser,
                                  ),
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mike19ZayT',
                                        style: kCaptionregular10.copyWith(
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        'Michael Jordan',
                                        style: kCaptionregular10,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cancel',
                                    style: kBodyregular16,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.updateIsAdded();
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Done',
                                      style: kBodyregular16.copyWith(
                                        color: AppColors.secondaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: AppColors.whiteColor,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.whiteColor,
                            size: 14.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Add Members',
                        style: kBodyregular16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                controller.isAdded!
                    ? Row(
                        children: List.generate(
                          5,
                          (index) => Padding(
                            padding: REdgeInsets.only(
                              left: 8.w,
                            ),
                            child: Image.asset(
                              AppImages.chatWithUser,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Who Can join this room',
                      style: kSubtitleregular14,
                    ),
                    GestureDetector(
                      onTap: () => Get.bottomSheet(
                        createRoomPrivacyBottomSheet(),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Select',
                            style: kCaptionregular12,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.whiteColor,
                            size: 18,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 48.h,
                ),
                GenericButton(
                  voidCallBack: () => Get.to(() => const MyHomePage(title: "")),
                  buttonText: 'Create Room',
                  isBorder: true,
                  isGradients: false,
                  backgroundColor: Colors.transparent,
                  textColor: AppColors.secondaryColor,
                ),
                SizedBox(
                  height: 68.h,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget _buildBottomPicker(Widget picker) {
    return Container(
      height: 324.h,
      padding: const EdgeInsets.only(top: 6.0),
      color: CupertinoColors.black,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: AppColors.whiteColor,
          decorationColor: AppColors.whiteColor,
          backgroundColor: AppColors.whiteColor,
          fontSize: 20.0,
        ),
        child: GestureDetector(
          // Blocks taps from propagating to the modal sheet and popping.
          onTap: () {},
          child: SafeArea(
            top: false,
            child: picker,
          ),
        ),
      ),
    );
  }
}
