import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_house_app/controllers/splash_controller.dart';
import 'package:green_house_app/resources/app_gradients.dart';
import 'package:green_house_app/resources/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(builder: (controller) {
        return Stack(
          fit: StackFit.expand,
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return primaryGradient.createShader(
                  Rect.fromLTRB(0, 0, rect.width, rect.height),
                );
              },
              blendMode: BlendMode.darken,
              child: Image.asset(
                AppImages.splashScreenImage,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 24,
              right: 0,
              left: 0,
              child: Image.asset(
                AppImages.appLogo,
              ),
            ),
          ],
        );
      }),
    );
  }
}
