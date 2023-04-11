import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_house_app/resources/app_colors.dart';

class GenericDottedBorder extends StatelessWidget {
  String imagePath;
  GenericDottedBorder({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: 160.w,
      child: DottedBorder(
        borderType: BorderType.Circle,
        color: AppColors.primaryColor,
        child: Center(
          child: Container(
            height: 124.63.h,
            width: 124.63.w,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(
                0.5,
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                height: 84.21.h,
                width: 84.21.w,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
