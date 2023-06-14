// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names, unused_import

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/constants/constants.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  // List<Widget> widgetList = [
  //   Text('Some text'),
  //   ElevatedButton(
  //     onPressed: () {
  //       // Button click logic
  //     },
  //     child: Text('Click me'),
  //   ),
  //   Container(
  //     color: Colors.blue,
  //     height: 50,
  //     width: 50,
  //   ),
  // ];
  List<String> textList = [
    'BBC News',
    'Modelyn Saris',
    'Omar Merditz',
  ];
  List<NotificationDetails> NotifyDetails = [
    NotificationDetails(
        image: 'assets/NewsAuthor.png',
        notice: 'has posted new europe \nnews “Ukraines President Zele...',
        time: '15 min ago',
        source: 'BBC News'),
    NotificationDetails(
        image: 'assets/girl.png',
        notice: 'is now following you',
        follow: true,
        time: '1h ago',
        source: 'Modelyn Saris '),
    NotificationDetails(
        image: 'assets/man.png',
        notice: 'comment to your news “Minting Your First NFT: A... “',
        follow: false,
        time: '1h ago',
        source: 'Omar Merditz')
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70.0,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(30.0))),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                ),
                Text('24.5k'),
                IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {},
                ),
                Text('1k'),
                IconButton(
                  icon: Icon(Icons.bookmark),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    Text(
                      'Notification',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Today,April 22',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        height: height,
                        child: ListView.builder(
                            itemCount: NotifyDetails.length,
                            itemBuilder: (BuildContext, index) {
                              return Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    height: height * 0.13,
                                    width: width,
                                    color: Color.fromARGB(255, 238, 238, 238),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                            NotifyDetails[index].image,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  'BBC News',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                    'has posted new europe \nnews “Ukraines President Zele...'),
                                                // RichText(
                                                //   text: TextSpan(
                                                //     // style: DefaultTextStyle.of(context).style,
                                                //     children:  textList.map((text){
                                                //       return TextSpan(
                                                //           text: text,
                                                //           style: TextStyle(
                                                //               fontWeight:
                                                //                   FontWeight
                                                //                       .bold,
                                                //               color:
                                                //                   Colors.black,
                                                //               fontSize: 14));}).toList(),
                                                //       TextSpan(
                                                //           text:
                                                //               ' has posted new europe \nnews “Ukraines President Zele...',
                                                //           style: TextStyle(
                                                //               color:
                                                //                   Colors.black,
                                                //               fontSize: 14)),
                                                //     ],
                                                //   ),
                                                // ),
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Text(
                                                  NotifyDetails[index].time,
                                                  // style: TextStyle(color: Colors.red),
                                                ), //practice
                                              ]),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                side: const BorderSide(
                                                  width: 2.0,
                                                  color: Colors.blue,
                                                )),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.add,
                                                  color: Colors.blue,
                                                ),
                                                const Text(
                                                  'Follow',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                      SizedBox(
                        height: height * 0.1,
                      )
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

class NotificationDetails {
  String image;
  String source;
  String notice;
  String time;
  bool? follow = false;

  NotificationDetails(
      {required this.image,
      required this.source,
      required this.notice,
      required this.time,
      this.follow});
}


// void togglefollow(){
//   setstate((){

//     isFollowing = false
    
//   })
// }