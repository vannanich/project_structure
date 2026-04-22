// import 'package:flutter_application_1/localization/languages/en_us.dart';
// import 'package:flutter_application_1/localization/languages/km_kh.dart';
// import 'package:get/get.dart';

// class AppTranslataton extends Translations {
//   @override
//   // TODO: implement keys
//   Map<String, Map<String, String>> get keys => {"km_KH": kmKH, "en_US": enUs};
// }
import 'package:flutter_application_1/localization/languages/en_us.dart';
import 'package:flutter_application_1/localization/languages/km_kh.dart';
import 'package:get/get.dart';

class AppTranslataton extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {"kmKH": kmKH, "enUS": enUS};
}
