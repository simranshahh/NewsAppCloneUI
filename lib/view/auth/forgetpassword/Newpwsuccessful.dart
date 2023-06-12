// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../Homepage/homepage.dart';

class Newpwsuccessful extends ConsumerStatefulWidget {
  const Newpwsuccessful({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NewpwsuccessfulState();
}

class _NewpwsuccessfulState extends ConsumerState<Newpwsuccessful> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 188.0),
        child: Column(
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 60,
            ),
            Text(
              'Congratulations',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Your account is ready to use'),
            SizedBox(
              height: height * 0.3,
            ),
            SizedBox(
                height: height * 0.08,
                width: width * 0.8,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Homepage()));
                    },
                    child: Text('Go to Homepage')))
          ],
        ),
      )),
    );
  }
}
