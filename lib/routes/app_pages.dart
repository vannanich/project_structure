import 'package:flutter_application_1/screen/login_screen/login_screen_view.dart';
import 'package:flutter_application_1/screen/homescreen/homescreen_binding.dart';
import 'package:flutter_application_1/screen/homescreen/homescreen_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreenView(),
      binding: LoginScreenViewBinding(),
    ),
  ];
}
