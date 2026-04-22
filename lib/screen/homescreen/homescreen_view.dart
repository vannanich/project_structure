// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/homescreen/homescreen_controller.dart';
// import 'package:get/get.dart';
// import 'package:get/state_manager.dart';

// class HomescreenView extends GetView<HomescreenController> {
//   const HomescreenView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("This is homescreen")),
//       body: Column(
//         children: [
//           Column(
//             children: [
//               // Text("full name ${controller.arg.fullname}"),
//               // Text("Email ${controller.arg.email}"),
//               // Text("Password ${controller.arg.password}"),
//               Text("full name ${controller.user!.fullname} "),
//               Text("Email ${controller.user!.email}"),
//               Text("Password ${controller.user!.password} "),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/screen/homescreen/homescreen_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Column(
        children: [
          Text("Full Name ${controller.user!.fullName}"),
          Text("Email ${controller.user!.email}"),
          Text("Password ${controller.user!.password}"),
          ElevatedButton(
            onPressed: () {
              var box = GetStorage();
              box.erase(); // clear all key 
              // box.remove("login") // this remove only one key login 
              Get.toNamed(AppRoutes.login);
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
