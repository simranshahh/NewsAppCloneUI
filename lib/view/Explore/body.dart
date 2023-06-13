import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/Explore/explore.dart';

class ExploreBody extends ConsumerStatefulWidget {
  const ExploreBody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExploreBodyState();
}

class _ExploreBodyState extends ConsumerState<ExploreBody> {
  List<ExploreDetails> details = [
    ExploreDetails(
        image: 'assets/explore1.png',
        title: 'Health',
        subtitle: 'Get energizing workout \nmoves, healthy recipe'),
    ExploreDetails(
        image: 'assets/explore2.png',
        title: 'Technology',
        subtitle: 'the application of  \nknowledge to the pra.....'),
    ExploreDetails(
        image: 'assets/explore3.png',
        title: 'Technology',
        subtitle: 'Art is a diverse  \nhuman activity, and...... '),
  ];

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

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ListView.builder(
            itemCount: details.length,
            itemBuilder: (BuildContext, index) {
              return Stack(children: [
                Container(
                  height: height * 0.18,
                  width: width,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Image.asset(
                          details[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              details[index].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              details[index].subtitle,
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: SizedBox(
                          width: width * 0.19,
                          height: height * 0.04,
                          child: ElevatedButton(
                            onPressed: _accept,
                            style: ElevatedButton.styleFrom(
                              primary: _isFollow ? Colors.grey : Colors.blue,
                              onPrimary: Colors.white,
                            ),
                            child: Text(
                              _isFollow ? 'Saved' : 'Save',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            }),
      ),
    );
  }
}

class ExploreDetails {
  String image;
  String title;
  String subtitle;

  ExploreDetails({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
