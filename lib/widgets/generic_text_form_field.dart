import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';

class GenericTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  VoidCallback? onTap;
  TextInputType textInputType;
  TextInputAction textInputAction;
  FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final bool? obsecure;
  bool? readOnly;
  int? maxLine;
  bool autoFocus;
  String? suffixIcon;
  VoidCallback? onClickOnTextField;

  GenericTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validator,
    this.onClickOnTextField,
    this.readOnly = false,
    this.autoFocus = false,
    this.maxLine = 1,
    this.focusNode,
    this.onTap,
    required this.onEditingComplete,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.suffixIcon,
    this.obsecure,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: TextFormField(
        obscureText: obsecure ?? false,
        controller: controller,
        validator: validator,
        onTap: onClickOnTextField,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        focusNode: focusNode,
        readOnly: readOnly!,
        maxLines: maxLine,
        autofocus: autoFocus,
        cursorHeight: 21,
        cursorColor: AppColors.primaryColor,
        onEditingComplete: onEditingComplete,
        style: kBodyregular16,
        decoration: InputDecoration(
          hintText: hintText,
          errorStyle: const TextStyle(
            height: 0.5,
          ),
          hintStyle: kBodyregular16.copyWith(
            color: AppColors.blackShade300,
          ),
          suffixIcon: suffixIcon != null
              ? InkWell(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      suffixIcon!,
                    ),
                  ),
                )
              : SizedBox(),
          focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.blackShade300),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.errorColor),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackShade300,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.blackShade300),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.blackShade300),
          ),
        ),
      ),
    );
  }
}
