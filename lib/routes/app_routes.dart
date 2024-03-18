import 'package:flutter/material.dart';
import '../presentation/registration_page_screen/registration_page_screen.dart';
import '../presentation/sign_in_page_screen/sign_in_page_screen.dart';
import '../presentation/camera_page_screen/camera_page_screen.dart';
import '../presentation/parts_list_page_screen/parts_list_page_screen.dart';
import '../presentation/detail_info_page_screen/detail_info_page_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registrationPageScreen = '/registration_page_screen';

  static const String signInPageScreen = '/sign_in_page_screen';

  static const String cameraPageScreen = '/camera_page_screen';

  static const String partsListPageScreen = '/parts_list_page_screen';

  static const String detailInfoPageScreen = '/detail_info_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registrationPageScreen: (context) => RegistrationPageScreen(),
    signInPageScreen: (context) => SignInPageScreen(),
    cameraPageScreen: (context) => CameraPageScreen(),
    partsListPageScreen: (context) => PartsListPageScreen(),
    detailInfoPageScreen: (context) => DetailInfoPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
