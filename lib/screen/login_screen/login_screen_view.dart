import 'package:flutter/material.dart';
import 'package:flutter_application_1/localization/localization_service.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/screen/login_screen/login_screen_arguments.dart';
import 'package:flutter_application_1/widgets/textField/custom_textField.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

part 'login_screen_binding.dart';
part 'login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenViewController> {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              _buildHeader(),
              SizedBox(height: 25),
              _buildGreeting(),
              SizedBox(height: 20),
              _buildLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogin() {
    return Column(
      children: [
        CustomTextfield(
          hintText: 'Full Name'.tr,
          txtController: controller.fnCtrl,
          txtControoler: null,
        ),
        SizedBox(height: 20),
        CustomTextfield(
          hintText: 'Email'.tr,
          txtController: controller.emailCtrl,
          txtControoler: null,
        ),
        SizedBox(height: 20),
        Obx(
          () => CustomTextfield(
            txtController: controller.passCtrl,
            hintText: 'Password',
            isPass: true,
            isHide: controller.isHidePassword.value,
            sufficIcon: GestureDetector(
              onTap: () {
                controller.togglePassword();
              },
              child: Icon(
                controller.isHidePassword.value
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            txtControoler: null,
          ),
        ),
        SizedBox(height: 20),

        // ElevatedButton(
        //   onPressed: () {
        //     controller.login();
        //   },
        //   child: Text('login'),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  // Get.updateLocale(Locale("kmKH"));
                  LocalizationService().changeLocale("kmKH");
                  debugPrint("${Get.locale}");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                ),
                child: Text('Khmer'),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  // Get.updateLocale(Locale("enUS"));
                  LocalizationService().changeLocale("enUS");
                  debugPrint(Get.locale!.languageCode);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                ),
                child: Text('English'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGreeting() {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          'greeting_title'.tr,
          style: Get.locale!.languageCode == "kmKH"
              ? GoogleFonts.googleSans(
                  fontSize: 40,
                  fontWeight: .bold,
                  height: 1,
                )
              : GoogleFonts.spaceGrotesk(
                  fontSize: 40,
                  fontWeight: .bold,
                  height: 1,
                ),
        ),
        SizedBox(height: 20),
        Text(
          'Help beginner developers and IT students master coding skills  through gamified quizzes and micro-challenges.'
              .tr,
          style: GoogleFonts.googleSans(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            height: 1.2,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      spacing: 10,
      children: [
        Container(width: 50, height: 50, color: Colors.grey),

        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'MY FIRST APP',
              style: TextStyle(fontSize: 20, fontWeight: .bold, height: 1.2),
            ),
            Text(
              'by flutter framework',
              style: TextStyle(fontSize: 13, fontWeight: .normal, height: 1.2),
            ),
          ],
        ),
      ],
    );
  }
}
