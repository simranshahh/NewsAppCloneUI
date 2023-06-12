// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Business extends ConsumerStatefulWidget {
  const Business({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BusinessState();
}

class _BusinessState extends ConsumerState<Business> {
  List<LatestNews> latestnewsdetails = [
    LatestNews(
        image: "assets/img1.png",
        title: 'Europe',
        subtitle:
            "Ukraine's President Zelensky to\n BBC: Blood money being paid...",
        source: 'BBS News',
        time: '14m ago',
        sourceimage: 'assets/NewsAuthor.png'),
    LatestNews(
        image: "assets/img2.png",
        title: 'Travel',
        subtitle:
            "Her train broke down. Her phone \ndied. And then she met her...",
        source: 'CNN',
        time: '14m ago',
        sourceimage: 'assets/NewsAuthor.png'),
    LatestNews(
        image: "assets/img3.png",
        title: 'Europe',
        subtitle: "Russian warship: Moskva sinks in \nBlack Sea",
        source: 'BBC News',
        time: '4h ago',
        sourceimage: 'assets/NewsAuthor.png'),
    LatestNews(
        image: "assets/img4.png",
        title: 'Money',
        subtitle:
            "Wind power produced more \nelectricity than coal and nucle...",
        source: 'USA Today',
        time: '4h ago',
        sourceimage: 'assets/Ellipse.png'),
    LatestNews(
        image: "assets/img5.png",
        title: 'Life',
        subtitle:
            "'We keep rising to new chBusinessenges:\n' For churches hit by",
        source: 'USA Today',
        time: '4h ago',
        sourceimage: 'assets/Ellipse.png'),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: latestnewsdetails.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: height * 0.18,
                    width: width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 5, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.16,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            latestnewsdetails[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                latestnewsdetails[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 75, 74, 74)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                latestnewsdetails[index].subtitle,
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    latestnewsdetails[index].sourceimage,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    latestnewsdetails[index].source,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(Icons.timelapse_outlined),
                                  Text(latestnewsdetails[index].time),
                                  SizedBox(
                                    width: width * 0.09,
                                  ),
                                  Icon(Icons.more_horiz_outlined),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}

class LatestNews {
  String image;
  String title;
  String subtitle;
  String source;
  String time;
  String sourceimage;

  LatestNews({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.source,
    required this.time,
    required this.sourceimage,
  });
}
