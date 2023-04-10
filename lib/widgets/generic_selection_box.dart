import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_text_styles.dart';

class GenericSelectionBox extends StatelessWidget {
  String imagePath;
  bool? isGradient;
  String title;
  Color? textColor;
  VoidCallback voidCallback;
  GenericSelectionBox({
    super.key,
    this.isGradient = false,
    required this.voidCallback,
    required this.title,
    this.textColor = AppColors.whiteColor,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        height: 148.h,
        width: 159.w,
        decoration: BoxDecoration(
          color: AppColors.blackColorB4Shade,
          border: isGradient!
              ? GradientBoxBorder(
                  gradient: buttonGradient,
                )
              : null,
          borderRadius: BorderRadius.circular(
            8.r,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 72.h,
                width: 72.w,
                decoration: const BoxDecoration(
                  color: AppColors.blackColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    imagePath,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Text(
              title,
              style: kBodyregular16.copyWith(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
