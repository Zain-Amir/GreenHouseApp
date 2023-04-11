import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/models/on_boarding_model.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/resources/app_text_styles.dart';
import 'package:green_house_app/routes/app_routes.dart';
import 'package:green_house_app/widgets/generic_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScren extends StatefulWidget {
  const OnBoardingScren({super.key});

  @override
  State<OnBoardingScren> createState() => _OnBoardingScrenState();
}

class _OnBoardingScrenState extends State<OnBoardingScren> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _controller,
        itemCount: onBoardingList.length,
        itemBuilder: (_, i) {
          return Stack(
            fit: StackFit.expand,
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return onBoardingGradient.createShader(
                    Rect.fromLTRB(
                      0,
                      0,
                      bounds.width,
                      bounds.height,
                    ),
                  );
                },
                blendMode: BlendMode.srcATop,
                child: Image.asset(
                  onBoardingList[i].imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 40.h,
                left: 12.w,
                right: 12.w,
                child: SafeArea(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 120.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        i == 2
                            ? SizedBox()
                            : SizedBox(
                                width: double.infinity,
                                child: GestureDetector(
                                  onTap: () async {
                                    SharedPreferences sharedP =
                                        await SharedPreferences.getInstance();
                                    sharedP.setBool("isFirstTime", true);
                                    Get.offAllNamed(
                                      AppRoutes.login,
                                    );
                                  },
                                  child: Text(
                                    'Skip',
                                    textAlign: TextAlign.right,
                                    style: kSubtitleregular14.copyWith(
                                      decoration: TextDecoration.none,
                                      color: AppColors.whiteColor.withOpacity(
                                        0.7,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        Column(
                          children: [
                            Text(
                              onBoardingList[i].title,
                              style: kTitleregular28.copyWith(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 12.h,
                                bottom: 24.h,
                              ),
                              child: SizedBox(
                                width: 343.w,
                                child: Text(
                                  onBoardingList[i].description,
                                  textAlign: TextAlign.center,
                                  style: kBodyregular16.copyWith(
                                    decoration: TextDecoration.none,
                                    height: 1.7,
                                  ),
                                ),
                              ),
                            ),
                            i == 2
                                ? SizedBox(
                                    width: 244.w,
                                    child: GenericButton(
                                      voidCallBack: () async {
                                        SharedPreferences sharedP =
                                            await SharedPreferences
                                                .getInstance();
                                        sharedP.setBool("isFirstTime", true);
                                        Get.offAllNamed(
                                          AppRoutes.login,
                                        );
                                      },
                                      buttonText: 'Continue',
                                      isBorder: false,
                                      isGradients: false,
                                      backgroundColor: AppColors.secondaryColor,
                                      textColor: AppColors.whiteColor,
                                    ),
                                  )
                                : DotsIndicator(
                                    dotsCount: onBoardingList.length,
                                    position: i.toDouble(),
                                    decorator: const DotsDecorator(
                                      color: AppColors
                                          .whiteColor, // Inactive color
                                      activeColor: AppColors.secondaryColor,
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
