import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
                    Stack(
                      children: [
                        Container(
                          height: height * 0.13,
                          width: width,
                          color: Color.fromARGB(255, 238, 238, 238),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 12, 0, 0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  'assets/NewsAuthor.png',
                                ),
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        // style: DefaultTextStyle.of(context).style,
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: 'BBC News',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                          TextSpan(
                                              text:
                                                  ' has posted new europe \nnews “Ukraines President Zele...',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ),
                                    Text('15m ago'),
                                  ])
                            ],
                          ),
                        )
                      ],
                    )
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
