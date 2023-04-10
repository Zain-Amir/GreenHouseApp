import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_text_styles.dart';

class GenericButton extends StatelessWidget {
  Color? backgroundColor;
  bool isGradients;
  bool isBorder;
  final String buttonText;
  final VoidCallback voidCallBack;
  Color? textColor;
  GenericButton({
    Key? key,
    this.backgroundColor = AppColors.whiteColor,
    this.isGradients = false,
    this.textColor,
    this.isBorder = false,
    required this.voidCallBack,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallBack,
      child: Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          gradient: isGradients ? buttonGradient : null,
          border: isBorder
              ? GradientBoxBorder(gradient: buttonGradient)
              : Border.all(
                  color: Colors.transparent,
                ),
          borderRadius: BorderRadius.circular(
            27.r,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: kSubtitleregular14.copyWith(
              color: textColor ?? AppColors.primaryColor,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
