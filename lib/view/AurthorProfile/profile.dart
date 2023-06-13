import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
                      'BBC News',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                        "is an operational business division of the British Broadcasting Corporation responsible for the gathering and broadcasting of news and current affair"),
                    ElevatedButton(
                      
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          // side: const BorderSide(
                          //   width: 1.0,
                          //   color: Colors.blue,
                          // )
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.blue,
                            ),
                            const Text(
                              'Follow',
                              // style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
