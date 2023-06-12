// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../model/LoginModel.dart';

abstract class IUserRepository {
  Future<Logininfo> Login(String email, String password, BuildContext context);
}
