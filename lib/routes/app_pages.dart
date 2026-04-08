import 'package:flutter_application_1/screen/homescreen/homescreen_binding.dart';
import 'package:flutter_application_1/screen/homescreen/homescreen_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomescreenView(),
      binding: HomescreenBinding(),
    ),
  ];
}
