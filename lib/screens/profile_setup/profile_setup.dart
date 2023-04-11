import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_strings.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class ProfileSetup extends StatelessWidget {
  ProfileSetup({super.key});
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController birthDayController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime dateTime = DateTime.now();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppString.setUpProfile,
          style: kBodyregular16.copyWith(color: AppColors.whiteColor),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.whiteColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.h,
              right: 5.w,
            ),
            child: Text(
              '01/03',
              style: kSubtitleregular14.copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/smoke.gif",
              height: 200.h,
              width: 200.w,
            ),
            /*  Stack(
              children: const [
                /*  Container(
                  height: 160.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    border: GradientBoxBorder(
                      gradient: buttonGradient,
                      width: 4.w,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppImages.smokingProfileIcon,
                    ),
                  ),
                ), */
                /*    Positioned(
                  top: 110,
                  left: 110,
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        AppImages.editIcon,
                      ),
                    ),
                  ),
                ) */
              ],
            ), */
            SizedBox(
              height: 24.h,
            ),
            GenericTextFormField(hintText: AppString.firstName, controller: firstNameController, validator: requiredValidator, onEditingComplete: () {}),
            SizedBox(
              height: 16.h,
            ),
            GenericTextFormField(hintText: AppString.lastName, controller: lastNameController, validator: requiredValidator, onEditingComplete: () {}),
            SizedBox(
              height: 16.h,
            ),
            GenericTextFormField(hintText: AppString.userName, controller: userNameController, validator: requiredValidator, onEditingComplete: () {}),
            SizedBox(
              height: 16.h,
            ),
            GenericTextFormField(
              hintText: AppString.birthDay,
              controller: birthDayController,
              readOnly: true,
              onClickOnTextField: () {
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
              validator: requiredValidator,
              suffixIcon: AppImages.birthDay,
              onEditingComplete: () {},
            ),
            SizedBox(
              height: 64.h,
            ),
            GenericButton(
              voidCallBack: () => Get.toNamed(
                AppRoutes.profileSecondSetup,
              ),
              buttonText: AppString.next,
              backgroundColor: Colors.transparent,
              isBorder: true,
              isGradients: false,
              textColor: AppColors.secondaryColor,
            ),
          ],
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
