// ignore_for_file: file_names
// // ignore_for_file: non_constant_identifier_names

// import 'dart:convert';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:nb_utils/nb_utils.dart';
// import 'package:newsapp/Services/basedio.dart';
// import 'package:newsapp/helper/constants.dart';
// import 'package:newsapp/myconfig/my_config.dart';

// import 'package:newsapp/riverpod/model/LoginModel.dart';

// import '../interface/LoginInterface.dart';

// class UserRepository implements IUserRepository {
//   @override
//   Future<Logininfo> Login(
//       String email, String password, BuildContext context) async {
//     var data = {
//       'email': email,
//       'password': password,
//     };
//     final response = await Api().post(MyConfig.login, data: data);

//     if (response.statusCode == 200) {
//       bool jsonResponse = jsonDecode(response.data)["user"]["verified"];
//       print(jsonResponse);

//       var token = json.decode(response.data)['accesstoken'];
//       var reftoken = json.decode(response.data)["user"]["refreshTokens"];
//       var usertype = json.decode(response.data)["user"]["role"];
//       var id = json.decode(response.data)["user"]["_id"];
//       var address = json.decode(response.data)["user"]["address"];
//       await setValue(role, usertype);
//     }
//   }
// }
