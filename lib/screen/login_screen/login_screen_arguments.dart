import 'dart:convert';

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // optional

// class LoginScreenArguments {
//   String fullname;
//   String email;
//   String password;
//   LoginScreenArguments({
//     required this.fullname,
//     required this.email,
//     required this.password,
//   });
// }

// ignore_for_file: public_member_api_docs, sort_constructors_first
//optional



class LoginScreenArgument {
  String fullName;
  String email;
  String password;

  LoginScreenArgument({
    required this.fullName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'email': email,
      'password': password,
    };
  }

  factory LoginScreenArgument.fromMap(Map<String, dynamic> map) {
    return LoginScreenArgument(
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginScreenArgument.fromJson(String source) => LoginScreenArgument.fromMap(json.decode(source) as Map<String, dynamic>);
}
