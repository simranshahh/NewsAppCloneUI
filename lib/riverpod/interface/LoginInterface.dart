import 'package:flutter/material.dart';

import '../model/LoginModel.dart';

abstract class IUserRepository {
  Future<Logininfo> Login(String email, String password, BuildContext context);
}
