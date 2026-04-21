// import 'package:flutter/foundation.dart';
// import 'package:flutter_application_1/screen/login_screen/login_screen_arguments.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class HomescreenController extends GetxController {
//   // as it meant has argument same as loginscrsseen
//   // var arg = Get.arguments as LoginScreenArguments;
//   var box = GetStorage();

//   LoginScreenArguments? user;

//   void readUser() async {
//     user = box.read("user");

//     debugPrint("user from storage : $user");
//   }

//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     readUser();
//   }
// }

import 'package:flutter_application_1/screen/login_screen/login_screen_arguments.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreenController extends GetxController {
  var box = GetStorage();

  LoginScreenArgument? user;

  void readUser() {
    var data = box.read("user") as Map<String, dynamic>;
    user = LoginScreenArgument.fromMap(data);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    readUser();
  }
}
