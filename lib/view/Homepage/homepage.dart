// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/Homepage/body.dart';

class Homepage extends ConsumerStatefulWidget {
  const Homepage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/logo.png', height: 40),
                    SizedBox(
                      width: width * 0.40,
                    ),
                    Card(
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //  border: Border.all(color: Colors.grey)
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notification_add_outlined)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(height: height, child: Homebody())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
