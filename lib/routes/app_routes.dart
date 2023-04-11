import 'package:get/get.dart';
import 'package:green_house_app/screens/chat/chat_screen.dart';
import 'package:green_house_app/screens/chat/conservation_screen.dart';
import 'package:green_house_app/screens/chat/discover_people.dart';
import 'package:green_house_app/screens/create_post/create_post.dart';
import 'package:green_house_app/screens/forget_password/forget_otp.dart';
import 'package:green_house_app/screens/forget_password/forget_password.dart';
import 'package:green_house_app/screens/go_live_create_room/create_room.dart';
import 'package:green_house_app/screens/go_live_create_room/create_room_complete.dart';
import 'package:green_house_app/screens/home/dashboard.dart';
import 'package:green_house_app/screens/login_screen/login_screen.dart';
import 'package:green_house_app/screens/login_screen/login_start_screen.dart';
import 'package:green_house_app/screens/no_internet/no_internet.dart';
import 'package:green_house_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:green_house_app/screens/profile_setup/profile_completed.dart';
import 'package:green_house_app/screens/profile_setup/profile_second_setup.dart';
import 'package:green_house_app/screens/profile_setup/profile_setup.dart';
import 'package:green_house_app/screens/profile_setup/profile_third_setup.dart';
import 'package:green_house_app/screens/settings/setting_screen.dart';
import 'package:green_house_app/screens/settings/settings_screen/change_password/change_password.dart';
import 'package:green_house_app/screens/settings/settings_screen/change_password/new_password.dart';
import 'package:green_house_app/screens/settings/settings_screen/change_password/password_completed.dart';
import 'package:green_house_app/screens/settings/settings_screen/invite_screen/invite_screen.dart';
import 'package:green_house_app/screens/settings/settings_screen/notification_screen/notification_screen.dart';
import 'package:green_house_app/screens/settings/settings_screen/terms_conditions/terms_conditions.dart';
import 'package:green_house_app/screens/signup_screen/email_verification.dart';
import 'package:green_house_app/screens/signup_screen/password_screen.dart';
import 'package:green_house_app/screens/signup_screen/signup_screen.dart';
import 'package:green_house_app/screens/splash_screen/splash_screen.dart';
import 'package:green_house_app/screens/user_profile_screen/edit_profile_screen.dart';

import '../screens/settings/Help_faqs.dart';

class AppRoutes {
  // App Routes
  static const initalRoute = '/';
  static const startedScreen = '/start_screen';
  static const login = '/login';
  static const loginStart = '/loginStart';
  static const signUp = '/signup';
  static const homeScreen = '/home';
  static const noInternet = '/noInternet';
  static const forgetPassword = '/forgetPassword';
  static const forgetPasswordOTP = '/forgetPasswordOTP';
  static const emailVerification = '/emailVerification';
  static const passwordScreen = '/passwordScreen';
  static const profileSetup = '/profileSetup';
  static const profileSecondSetup = '/profileSecondSetup';
  static const profileThirdSetup = '/profileThirdSetup';
  static const profileCompleted = '/profileCompleted';
  static const dashBoard = '/dashBoard';
  static const createPost = '/createPost';
  static const createRoom = '/createRoom';
  static const chatScreen = '/chatScreen';
  static const conservationScreen = '/conservationScreen';
  static const discoverPeople = '/discoverPeople';
  static const createRoomCompleted = '/createRoomComplete';
  static const editProfileScreen = '/editProfileScreen';
  static const settingScreen = '/settingScreen';
  static const notificationScreen = '/notificationScreen';
  static const changePasswordScreen = '/changePasswordScreen';
  static const termConditionScreen = '/termConditionScreen';
  static const helpandfaqsscreen = '/helpFaqsScreen';
  static const inviteScreen = '/inviteScreen';
  static const newPassword = '/newPassword';
  static const completePassword = '/completePassword';
  static const onBoardingScreen = '/onBoardingScreen';

  static final ROUTES = [
    // splash Route
    GetPage(
      name: initalRoute,
      page: () => const SplashScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: noInternet,
      page: () => const NoInternet(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: loginStart,
      page: () => const LoginStartScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: login,
      page: () => LoginScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: forgetPassword,
      page: () => ForgetPassword(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: signUp,
      page: () => SignupPage(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: forgetPasswordOTP,
      page: () => ForgetPasswordOTP(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: emailVerification,
      page: () => EmailVerification(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: passwordScreen,
      page: () => PasswordScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: profileSetup,
      page: () => ProfileSetup(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: profileSecondSetup,
      page: () => const ProfileSecondSetup(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: profileThirdSetup,
      page: () => ProfileThirdSetup(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: profileCompleted,
      page: () => const ProfileCompleted(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: dashBoard,
      page: () => const DashBoard(
          // selectedIndx: 0,
          ),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: createPost,
      page: () => CreatePost(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: createRoom,
      page: () => CreateRoom(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: chatScreen,
      page: () => const ChatScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: conservationScreen,
      page: () => const ConservationScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: discoverPeople,
      page: () => DiscoverPeople(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: createRoomCompleted,
      page: () => const CreateRoomCompleted(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: settingScreen,
      page: () => const SettingScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: termConditionScreen,
      page: () => const TermsConditionScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: inviteScreen,
      page: () => const InviteScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: newPassword,
      page: () => NewPassword(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: completePassword,
      page: () => const PasswordCompletedScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: onBoardingScreen,
      page: () => const OnBoardingScren(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: helpandfaqsscreen,
      page: () => const Help_Faqs(),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
