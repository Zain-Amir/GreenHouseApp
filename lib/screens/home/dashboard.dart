import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/home_controller.dart';
import 'package:green_house_app/resources/app_colors.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';
import 'package:green_house_app/widgets/generic_bottom_sheet.dart';
import 'package:green_house_app/widgets/generic_selected_nav_item.dart';
import 'package:green_house_app/widgets/generic_unselected_nav_item.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GetBuilder<HomeController>(builder: (controller) {
        return controller.ListOfScreen[controller.selectedIndex];
      }),
      bottomNavigationBar: GetBuilder<HomeController>(builder: (controller) {
        return CircleNavBar(
          circleGradient: buttonGradient,
          circleShadowColor: Colors.transparent,
          activeIcons: const [
            SelectedNavItem(
              pngPath: AppImages.selectedHome,
            ),
            SelectedNavItem(
              pngPath: AppImages.selectedExplore,
            ),
            Icon(
              Icons.add,
              color: AppColors.whiteColor,
            ),
            SelectedNavItem(
              pngPath: AppImages.selectedActivity,
            ),
            SelectedNavItem(
              pngPath: AppImages.selectedProfile,
            ),
          ],
          inactiveIcons: [
            UnselectedNavItem(
              pngPath: controller.selectedIndex == 0 ? AppImages.selectedHome : AppImages.unSelectedHome,
              text: 'Home',
              textColor: controller.selectedIndex == 0 ? AppColors.secondaryColor : AppColors.whiteColor,
            ),
            UnselectedNavItem(
              pngPath: controller.selectedIndex == 1 ? AppImages.selectedExplore : AppImages.unSelectedExplore,
              text: 'Explore',
              textColor: controller.selectedIndex == 1 ? AppColors.secondaryColor : AppColors.whiteColor,
            ),
            const Text(
              "add",
            ),
            UnselectedNavItem(
              pngPath: controller.selectedIndex == 2 ? AppImages.selectedActivity : AppImages.unSelectedActivity,
              text: 'Activity',
              textColor: controller.selectedIndex == 2 ? AppColors.secondaryColor : AppColors.whiteColor,
            ),
            UnselectedNavItem(
              pngPath: controller.selectedIndex == 3 ? AppImages.selectedProfile : AppImages.unSelectedProfile,
              text: 'Profile',
              textColor: controller.selectedIndex == 3 ? AppColors.secondaryColor : AppColors.whiteColor,
            ),
          ],
          color: AppColors.blackShade900,
          height: 60,
          circleWidth: 60,
          activeIndex: 2,
          onTap: (index) {
            if (index == 2) {
              Get.bottomSheet(createPost());
            } else {
              if (index == 3) {
                controller.updateIndex(value: index - 1);
              } else if (index == 4) {
                controller.updateIndex(value: index - 1);
              } else {
                controller.updateIndex(value: index);
              }
            }
          },
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 34),
          cornerRadius: BorderRadius.only(
            topLeft: Radius.circular(8.r),
            topRight: Radius.circular(8.r),
            bottomRight: Radius.circular(8.r),
            bottomLeft: Radius.circular(
              8.r,
            ),
          ),
          shadowColor: Colors.transparent,
          elevation: 10,
        );
      }),
    );
  }
}
