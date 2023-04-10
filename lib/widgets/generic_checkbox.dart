import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_house_app/resources/app_colors.dart';

class GenericCheckBox extends StatelessWidget {
  GenericCheckBox({
    super.key,
    required this.onTap,
    required this.isChecked,
  });
  final bool isChecked;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(
            3.r,
          ),
          border: Border.all(
            color: AppColors.secondaryColor,
            width: 2.0,
          ),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                size: 16.0,
                color: AppColors.secondaryColor,
              )
            : null,
      ),
    );
  }
}
