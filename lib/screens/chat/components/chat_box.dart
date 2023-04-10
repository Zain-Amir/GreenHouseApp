import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_text_styles.dart';

class ChatBox extends StatelessWidget {
  Color? backgroundColor;
  String messageText;
  bool? isSender;
  String timeDate;
  double? width;
  ChatBox({
    super.key,
    this.isSender = false,
    required this.messageText,
    required this.timeDate,
    required this.width,
    this.backgroundColor = AppColors.blackShade900,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender! ? Alignment.bottomRight : Alignment.centerLeft,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.r,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(
                  5.r,
                ),
              ),
              child: SizedBox(
                width: 219.w,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    messageText,
                    style: kBodyregular16.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.w,
            ),
            Align(
              alignment:
                  isSender! ? Alignment.bottomRight : Alignment.bottomLeft,
              child: Text(
                timeDate,
                style: kCaptionregular12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
