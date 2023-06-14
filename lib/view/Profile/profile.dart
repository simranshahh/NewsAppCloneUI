// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/AurthorProfile/news.dart';
import 'package:newsapp/view/AurthorProfile/recent.dart';

import 'editprofile.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  bool _isFollow = false;
  _accept() {
    setState(() {
      _isFollow = !_isFollow;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    Text('Profile'),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/NewsAuthor.png'),
                    ),
                    Column(
                      children: [
                        Text(
                          '1.2M',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '124K',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '326',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          'News',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wilson Franci',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.45,
                            height: height * 0.07,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            EditProfilepage()));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: _isFollow ? Colors.grey : Colors.blue,
                                onPrimary: Colors.white,
                              ),
                              child: Text(
                                _isFollow ? 'Following' : 'Edit Profile',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: width * 0.45,
                          //   height: height * 0.07,
                          //   child: ElevatedButton(
                          //     child: Text(
                          //       'Following',
                          //       style: TextStyle(
                          //           fontWeight: FontWeight.bold, fontSize: 18),
                          //     ),
                          //     onPressed: () {

                          //     },
                          //     style: ElevatedButton.styleFrom(
                          //       backgroundColor: Colors.blue,
                          //       // side: const BorderSide(
                          //       //   width: 1.0,
                          //       //   color: Colors.blue,
                          //       // )
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: width * 0.45,
                            height: height * 0.07,
                            child: ElevatedButton(
                              child: Text(
                                'Website',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                // side: const BorderSide(
                                //   width: 1.0,
                                //   color: Colors.blue,
                                // )
                              ),
                            ),
                          ),
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
                                  length: 2,
                                  initialIndex: 0,
                                  child: Column(
                                    children: [
                                      TabBar(
                                        isScrollable: true,
                                        // indicatorColor: Colors.black,
                                        labelColor: Colors.black,
                                        labelStyle:
                                            TextStyle(color: Colors.black),
                                        tabs: [
                                          Tab(
                                            text: 'News',
                                            height: 20,
                                          ),
                                          Tab(
                                            text: 'Recent',
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          children: [NewsTab(), RecentTabs()],
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
