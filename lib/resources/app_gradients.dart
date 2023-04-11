import 'package:flutter/material.dart';
import 'package:green_house_app/resources/app_colors.dart';

LinearGradient primaryGradient = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    AppColors.secondaryColor,
    AppColors.primaryColor,
  ],
  stops: [0.0, 1.0],
);

LinearGradient buttonGradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    AppColors.primaryColor,
    AppColors.secondaryColor,
  ],
  stops: [0.008, 1.0],
);
LinearGradient eventGradient = const LinearGradient(
  colors: [
    AppColors.blackColor,
    AppColors.blackColor,
  ],
  stops: [0.0001, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

LinearGradient onBoardingGradient = const LinearGradient(
  colors: [
    Color.fromRGBO(218, 169, 48, 0),
    Color(0xff32B66C),
  ],
  stops: [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
