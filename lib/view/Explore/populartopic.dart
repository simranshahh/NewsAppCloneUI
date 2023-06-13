import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../Homepage/Trending/trending.dart';

class PopularTopic extends ConsumerStatefulWidget {
  const PopularTopic({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PopularTopicState();
}

class _PopularTopicState extends ConsumerState<PopularTopic> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trending',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                  child: Text('See all'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TrendingPage()));
                  })
            ],
          ),
          Container(
            height: height * 0.25,
            width: width,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              'assets/carousal.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            'Europe',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            'Russian warship: Moskva sinks in Black Sea',
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
                    borderRadius: BorderRadius.circular(25)),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              Icon(Icons.timelapse_outlined),
              Text(' 4 hours ago'),
              SizedBox(
                width: width * 0.3,
              ),
              Icon(Icons.more_horiz_outlined),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
