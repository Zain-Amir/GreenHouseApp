import 'package:get/get.dart';
import 'package:green_house_app/screens/activity_screen/activity_screen.dart';
import 'package:green_house_app/screens/explore_screen/explore_screen.dart';
import 'package:green_house_app/screens/home/home_screen.dart';
import 'package:green_house_app/screens/user_profile_screen/user_profile_screen.dart';

class HomeController extends GetxController {
  int selectedIndex = 0;

  updateIndex({required value}) {
    selectedIndex = value;
    update();
  }

  var ListOfScreen = [
    HomeScreen(),
    ExploreScreen(),
    ActivityScreen(),
    UserProfile(),
  ];
}
