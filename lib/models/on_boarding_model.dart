import 'package:green_house_app/resources/app_images.dart';

class OnBoardingModel {
  String title;
  String description;
  String imagePath;

  OnBoardingModel(
      {required this.title,
      required this.description,
      required this.imagePath});
}

var onBoardingList = [
  OnBoardingModel(
    title: 'Welcome',
    description:
        'Welcome to GreenHouse... the dopest social network out! We are here to connect stoners to other stoners using interactive live group chats. Grow your following on our platform with a network where everyone is guaranteed to have one thing in common... a love for the plant.',
    imagePath: AppImages.onboarding1,
  ),
  OnBoardingModel(
    title: 'Something For Everyone',
    description:
        'At GreenHouse you will find something for everyone. Whether you are here to chill, sesh with friends, catch a vibe, engage in brain stimulating conversations, or promote your business we have you covered.',
    imagePath: AppImages.onboarding2,
  ),
  OnBoardingModel(
    title: 'A New Beginning',
    description:
        'GreenHouse offers a deeper level of interactions that connoisseurs of the plant have not experienced. We plan to usher in a new digital age of cannabis social media that will create a positive impact for our users that will last a lifetime. ',
    imagePath: AppImages.onboarding3,
  ),
];
