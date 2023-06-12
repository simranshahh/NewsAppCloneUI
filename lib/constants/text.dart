import 'package:flutter/material.dart';

TextStyle gettitleSize(BuildContext context, double d) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * 0.037);
}

TextStyle getsubtitleSize(BuildContext context) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * 0.025, fontFamily: "Regular");
}

TextStyle getnormalSize(BuildContext context) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * 0.018, fontFamily: "Regular");
}

TextStyle getsplashSize(BuildContext context) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * 0.05, fontFamily: "Regular");
}

TextStyle getSimple(BuildContext context, double size) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * size, fontFamily: "Regular");
}
