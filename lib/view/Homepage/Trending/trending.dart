// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../homepage.dart';

class TrendingPage extends ConsumerStatefulWidget {
  const TrendingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TrendingPageState();
}

class _TrendingPageState extends ConsumerState<TrendingPage> {
  List<TrendingNews> trendingnewsdetails = [
    TrendingNews(
        image: 'assets/carousal.png',
        title: 'Europe',
        subtitile: 'Russian warship: Moskva sinks in Black Sea',
        source: 'BBC News',
        time: '4 hours ago'),
    TrendingNews(
        image: 'assets/trending2.png',
        title: 'Europe',
        subtitile:
            "Ukraine's President Zelensky to BBC: Blood money being paid for Russian oil",
        source: 'BBC News',
        time: '14 minago'),
    TrendingNews(
        image: 'assets/trending3.png',
        title: 'Europe',
        subtitile: 'Russian warship: Moskva sinks in Black Sea',
        source: 'BBC News',
        time: '4 hours ago'),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Homepage()));
                        },
                      ),
                      Text(
                        'Trending',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  SizedBox(
                    height: height,
                    child: ListView.builder(
                        itemCount: trendingnewsdetails.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Container(
                                height: height * 0.45,
                                width: width,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  trendingnewsdetails[index].image,
                                ),
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(8.0, 210, 8, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      trendingnewsdetails[index].title,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      trendingnewsdetails[index].subtitile,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: height * 0.04,
                                          width: width * 0.06,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: Image.asset(
                                            'assets/NewsAuthor.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text(
                                          'BBC News',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Icon(Icons.timelapse_outlined),
                                        Text(' 4 hours ago'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                            ],
                          );
                        }),
                  )
                  // SizedBox(
                  //   height: height * 0.02,
                  // ),
                ]),
          ),
        ),
      ),
    );
  }
}

class TrendingNews {
  String image;
  String title;
  String subtitile;
  String source;
  String time;

  TrendingNews(
      {required this.image,
      required this.title,
      required this.subtitile,
      required this.source,
      required this.time});
}
