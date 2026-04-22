// import 'package:flutter/material.dart';

// class CustomTextfield extends StatelessWidget {
//   final String hintText;
//   final Widget? sufficIcon;
//   final bool isPass;
//   final bool isHide;
//   // final TextEditingController txtControoler;
//   final TextEditingController?
//   txtControoler; // put ? mean optional pel hav tv brer jg dak kr bn ot kr bn
//   const CustomTextfield({
//     super.key,
//     required this.hintText, // this put required cuz of jam bach
//     required this.txtControoler,

//     this.sufficIcon,
//     this.isPass = false,
//     this.isHide = true, required TextEditingController txtController,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: isPass && isHide,
//       decoration: InputDecoration(hintText: hintText),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final Widget? sufficIcon;
  final bool isPass;
  final bool isHide;
  final TextEditingController txtController;

  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.txtController,
    this.sufficIcon,
    this.isPass = false,
    this.isHide = true,
    required txtControoler,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtController,
      obscureText: isPass && isHide,
      decoration: InputDecoration(
        
        hintText: hintText,
        suffixIcon: sufficIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide()),
      ),
    );
  }
}
