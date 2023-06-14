import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SetttingPage extends ConsumerStatefulWidget {
  const SetttingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SetttingPageState();
}

class _SetttingPageState extends ConsumerState<SetttingPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: width * 0.30,
                  ),
                  Text(
                    'Setting',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  Icon(Icons.notifications_active_outlined),
                  Text(
                    '   Notification',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: width * 0.45,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  Icon(Icons.notifications_active_outlined),
                  Text(
                    '   Help',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: width * 0.6,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  Icon(Icons.notifications_active_outlined),
                  Text(
                    '   Security',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: width * 0.52,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  Icon(Icons.notifications_active_outlined),
                  Text(
                    '   Dark Mode',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: width * 0.46,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  Icon(Icons.notifications_active_outlined),
                  Text(
                    '   Log out',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: width * 0.53,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
