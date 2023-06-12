import 'package:flutter/material.dart';
import 'package:newsapp/view/Homepage/body.dart';
import 'package:newsapp/view/startscreen/onboard.dart';
import 'package:newsapp/view/startscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
