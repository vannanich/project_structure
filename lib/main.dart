import 'package:flutter/material.dart';
import 'package:flutter_application_1/localization/app_translatation.dart';
import 'package:flutter_application_1/localization/localization_service.dart';
import 'package:flutter_application_1/routes/app_pages.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var box = GetStorage();

    var isLogin = box.read("isLogin") ?? false;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // home: LoginScreenView(),
      // initialRoute: isLogin ? AppRoutes.home : AppRoutes.login,
      initialRoute: isLogin ? AppRoutes.login : AppRoutes.login,
      translations: AppTranslataton(),
      locale: LocalizationService().getLocale(),
      // locale: Locale("km", "KH"),
      // fallbackLocale: Locale("en", "US"),
      getPages: AppPages.routes,
    );
  }
}
