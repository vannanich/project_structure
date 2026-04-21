// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/login_screen/login_screen_arguments.dart';
// import 'package:flutter_application_1/routes/app_routes.dart';
// import 'package:flutter_application_1/widgets/textField/custom_textField.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// part 'login_screen_binding.dart';
// part 'login_screen_controller.dart';

// class LoginScreenView extends GetView<LoginScreenViewController> {
//   const LoginScreenView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [_buildHeader(), SizedBox(height: 20), _buildText()],
//         ),
//       ),
//     );
//   }

//   Widget _buildText() {
//     return Column(
//       children: [
//         CustomTextfield(
//           hintText: "Enter FullName...",
//           txtControoler: controller.flCtrl,
//         ),
//         CustomTextfield(
//           hintText: "Enter Email...",
//           txtControoler: controller.emailCtrl,
//         ),
//         Obx(
//           () => CustomTextfield(
//             hintText: "Password...",
//             isHide: controller.isHidePassword.value,
//             isPass: true,

//             sufficIcon: GestureDetector(
//               onTap: () {
//                 controller.togglePassword();
//               },
//               child: Icon(
//                 controller.isHidePassword.value
//                     ? Icons.visibility_off
//                     : Icons.visibility,
//               ),
//             ),
//             txtControoler: controller.passCtrl,
//           ),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             controller.login();
//             // Get.toNamed(
//             //   AppRoutes.home,
//             //   arguments: LoginScreenArguments(
//             //     fullname: controller.flCtrl.text,
//             //     email: controller.emailCtrl.text,
//             //     password: controller.emailCtrl.text,
//             //   ),
//             // );
//           },
//           child: Text("Login"),
//         ),
//       ],
//     );
//   }

//   Widget _buildHeader() {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Container(
//               width: 50,
//               height: 50,
//               decoration: BoxDecoration(color: Colors.green),
//             ),
//             SizedBox(width: 20),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "MY FIRST APP",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text("By flutter framework"),
//               ],
//             ),
//           ],
//         ),
//         Text(
//           "Sign in OR CREATE AN ACCOUNT ",
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 40,
//           ),
//         ),
//         Text(
//           "Help beginner developers and IT students master coding skills  through gamified quizzes and micro-challenges.",
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/screen/login_screen/login_screen_arguments.dart';
import 'package:flutter_application_1/widgets/textField/custom_textField.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
          hintText: "Full Name",
          txtController: controller.fnCtrl,
          txtControoler: null,
        ),
        CustomTextfield(
          hintText: "Email Address",
          txtController: controller.emailCtrl,
          txtControoler: null,
        ),
        Obx(
          () => CustomTextfield(
            txtController: controller.passCtrl,
            hintText: "Password",
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

        ElevatedButton(
          onPressed: () {
            controller.login();
          },
          child: Text("Login"),
        ),
      ],
    );
  }

  Widget _buildGreeting() {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          "SIGN IN OR CREATE AN ACCOUNT",
          style: TextStyle(fontSize: 40, fontWeight: .bold, height: 1),
        ),
        Text(
          "Help beginner developers and IT students master coding skills  through gamified quizzes and micro-challenges.",
          style: TextStyle(fontSize: 13, fontWeight: .normal, height: 1.2),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      spacing: 10,
      children: [
        Container(width: 50, height: 50, color: Colors.green),

        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "MY FIRST APP",
              style: TextStyle(fontSize: 20, fontWeight: .bold, height: 1.2),
            ),
            Text(
              "by flutter  framework",
              style: TextStyle(fontSize: 13, fontWeight: .normal, height: 1.2),
            ),
          ],
        ),
      ],
    );
  }
}
