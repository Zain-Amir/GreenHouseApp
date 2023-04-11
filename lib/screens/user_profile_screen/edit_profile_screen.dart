import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:green_house_app/widgets/generic_drop_down.dart';
import 'package:green_house_app/widgets/generic_text_form_field.dart';
import 'package:green_house_app/widgets/generic_validator.dart';

class EditProfileScreen extends StatelessWidget {
  List<String> genderDropDownList = ["Male", "Female", "Other"];
  List<String> smokingPreference = ["Smoker", "Dabber", "Edible Eater"];
  EditProfileScreen({super.key});

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController favoriteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: kBodyregular16.copyWith(color: AppColors.whiteColor),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 16.h,
                      right: 16.w,
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(color: AppColors.whiteColor, shape: BoxShape.circle),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.editIcon,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100.h,
                  child: SizedBox(
                    height: 160.h,
                    width: 160.w,
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.userImageProfile,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 200.h,
                  left: 120.w,
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.editIcon,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericTextFormField(
                    hintText: 'First Name',
                    controller: firstNameController,
                    validator: requiredValidator,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Last Name",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericTextFormField(
                    hintText: 'Last Name',
                    controller: lastNameController,
                    validator: requiredValidator,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Username",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericTextFormField(
                    hintText: 'Username',
                    controller: userNameController,
                    validator: requiredValidator,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Birthday",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericTextFormField(
                    hintText: '01/07/1996',
                    controller: dobController,
                    validator: requiredValidator,
                    readOnly: true,
                    suffixIcon: AppImages.birthDay,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Gender",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericDropDown(
                    hintText: 'Male',
                    icon: SvgPicture.asset(
                      AppImages.passwordHide,
                    ),
                    items: genderDropDownList,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Smoking Preference",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericDropDown(
                    hintText: 'Smoker',
                    icon: SvgPicture.asset(
                      AppImages.passwordHide,
                    ),
                    items: smokingPreference,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Favorite Strain",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericTextFormField(
                    hintText: 'OG Sherbert ',
                    controller: favoriteController,
                    validator: requiredValidator,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Bio",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: kCaptionregular12.copyWith(
                      color: AppColors.blackShade300,
                    ),
                  ),
                  GenericTextFormField(
                    hintText: 'Lorem ipsum dolor sit amet, consectetur',
                    controller: favoriteController,
                    validator: requiredValidator,
                    maxLine: 8,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Padding(
                    padding: REdgeInsets.symmetric(
                      horizontal: 48.w,
                    ),
                    child: GenericButton(
                      voidCallBack: () {},
                      buttonText: 'save',
                      isBorder: false,
                      isGradients: true,
                      textColor: AppColors.whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
