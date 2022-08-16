import 'package:flutter/material.dart';
import 'package:pets/pages/login.dart';
import 'package:pets/pages/register.dart';

getRoutes() {
  return {
    "/login": (context) => LoginPage(),
    "/register": (context) => RegisterPage()
  };
}
