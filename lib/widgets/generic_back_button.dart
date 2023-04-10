import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_house_app/resources/app_colors.dart';

class genericBackButton extends StatelessWidget {
  VoidCallback voidCallback;
  genericBackButton({
    super.key,
    required this.voidCallback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        width: 33.w,
        height: 33.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 8.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.blackShade750,
          borderRadius: BorderRadius.circular(
            4.r,
          ),
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
