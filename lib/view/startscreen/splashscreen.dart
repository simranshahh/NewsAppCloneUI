// ignore_for_file: prefer_const_constructors

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/startscreen/onboard.dart';

class Splashscreen extends ConsumerStatefulWidget {
  const Splashscreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashscreenState();
}

class _SplashscreenState extends ConsumerState<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EasySplashScreen(
        durationInSeconds: 3,
        logo: Image.asset('assets/logo.png'),
        navigator: Onboard(),
      ),
    );
  }
}
