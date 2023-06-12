// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/all.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/business.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/health.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/politics.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/science.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/sports.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/travel.dart';

class LatestNews extends ConsumerStatefulWidget {
  const LatestNews({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LatestNewsState();
}

class _LatestNewsState extends ConsumerState<LatestNews> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LatestNews',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text('See all'),
              ],
            ),
            SizedBox(
              height: height,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Container(
                    //   width: MediaQuery.of(context).size.width,
                    //   height: MediaQuery.of(context).size.height * 0.3,
                    //   decoration: BoxDecoration(color: Colors.red),
                    // ),
                    Expanded(
                      child: DefaultTabController(
                        length: 7,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              isScrollable: true,
                              // indicatorColor: Colors.black,
                              labelColor: Colors.black,
                              labelStyle: TextStyle(color: Colors.black),
                              tabs: [
                                Tab(
                                  text: 'All',
                                  height: 20,
                                ),
                                Tab(
                                  text: 'Sports',
                                ),
                                Tab(
                                  text: 'Politics',
                                ),
                                Tab(
                                  text: 'Business',
                                ),
                                Tab(
                                  text: 'Health',
                                ),
                                Tab(
                                  text: 'Travel',
                                ),
                                Tab(
                                  text: 'Science',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  All(),
                                  Sports(),
                                  Politics(),
                                  Business(),
                                  Health(),
                                  Travel(),
                                  Science(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
