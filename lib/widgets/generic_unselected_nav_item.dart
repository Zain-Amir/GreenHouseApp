import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_text_styles.dart';

class UnselectedNavItem extends StatelessWidget {
  final String text;
  final String pngPath;
  final bool isSvg;
  final double? height, width;
  final Color? textColor;

  const UnselectedNavItem(
      {Key? key,
      required this.text,
      required this.pngPath,
      this.height,
      this.width,
      this.textColor = AppColors.whiteColor,
      this.isSvg = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height ?? 24,
          width: width ?? 24,
          child: SvgPicture.asset(
            pngPath,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          text,
          style: kCaptionregular12.copyWith(
            color: textColor,
          ),
        ),
      ],
    );
  }
}
