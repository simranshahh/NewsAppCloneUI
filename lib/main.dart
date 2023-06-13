// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/BottomNavScreen/BottomNavScreen.dart';
import 'package:newsapp/view/AurthorProfile/profile.dart';
import 'package:newsapp/view/Bookmark/detailscreen.dart';
import 'package:newsapp/view/Homepage/Notifications/notification.dart';
import 'package:newsapp/view/Homepage/homepage.dart';
import 'package:newsapp/view/startscreen/splashscreen.dart';

import 'view/Homepage/Home/tabbar/all.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DetailScreen());
  }
}
