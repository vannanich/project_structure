// import 'package:flutter_application_1/screen/homescreen/homescreen_controller.dart';
// import 'package:get/get.dart';

// class HomescreenBinding implements Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => HomescreenController());
//   }
// }
import 'package:flutter_application_1/screen/homescreen/homescreen_controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
