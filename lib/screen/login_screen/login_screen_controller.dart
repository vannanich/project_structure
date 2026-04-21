// part of 'login_screen_view.dart';

// class LoginScreenViewController extends GetxController {
//   var isHidePassword = true.obs;
//   var flCtrl = TextEditingController();
//   var emailCtrl = TextEditingController();
//   var passCtrl = TextEditingController();
//   var box = GetStorage();

//   void login() async {
//     await box.write(
//       "user",
//       LoginScreenArguments(
//         fullname: flCtrl.text,
//         email: emailCtrl.text,
//         password: passCtrl.text,
//       ),
//     );
//     box.write("isLogin", true);
//     Get.toNamed(AppRoutes.home);
//   }

//   void togglePassword() {
//     isHidePassword.value = !isHidePassword.value;

//     // if (isHidePassword.value) {
//     //   isHidePassword.value = false;
//     // } else {
//     //   isHidePassword.value = true;
//     // }
//   }
// }
part of 'login_screen_view.dart';

class LoginScreenViewController extends GetxController {
  var isHidePassword = true.obs;
  var fnCtrl = TextEditingController();
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();

  var box = GetStorage();

  void login() async {
    await box.write(
      "user",
      LoginScreenArgument(
        fullName: fnCtrl.text,
        email: emailCtrl.text,
        password: passCtrl.text,
      ).toMap(),
    );

    await box.write("isLogin", true);

    Get.toNamed(AppRoutes.home);
  }

  void togglePassword() {
    isHidePassword.value = !isHidePassword.value;

    // if (isHidePassword.value) {
    //   isHidePassword.value = false;
    // } else {
    //   isHidePassword.value = true;
    // }
  }
}
