import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Homebody extends ConsumerStatefulWidget {
  const Homebody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomebodyState();
}

class _HomebodyState extends ConsumerState<Homebody> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              labelText: 'Search',
            ),
          ),
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
              Text('See all')
            ],
          ),
          // Container(
          //   height: height * 0.35,
          //   // color: Colors.red,
          //   child: CarouselSlider(
          //     items: [
          //       Container(
          //         margin: EdgeInsets.all(8.0),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10.0),
          //           image: DecorationImage(
          //             image: AssetImage("assets/carousal.png"),
          //             // fit: BoxFit.cover,
          //           ),
          //         ),
          //         // child: Text('gtdvfasyvh,'),
          //       ),
          //       Container(
          //         margin: EdgeInsets.all(8.0),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10.0),
          //           image: DecorationImage(
          //             image: AssetImage("assets/carousal.png"),
          //             // fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         margin: EdgeInsets.all(8.0),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10.0),
          //           image: DecorationImage(
          //               image: AssetImage("assets/carousal.png")),
          //         ),
          //       ),
          //     ],
          //     options: CarouselOptions(
          //       // height: 380.0,
          //       enlargeCenterPage: true,
          //       autoPlay: true,
          //       aspectRatio: 16 / 9,
          //       autoPlayCurve: Curves.fastOutSlowIn,
          //       enableInfiniteScroll: true,
          //       autoPlayAnimationDuration: Duration(milliseconds: 800),
          //       viewportFraction: 0.8,
          //     ),
          //   ),
          // ),

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
          Text(
            'Russian warship: Moskva sinks in Black Sea',
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: height * 0.5,
            width: width * 0.08,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Image.asset(
              'assets/NewsAuthor.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
