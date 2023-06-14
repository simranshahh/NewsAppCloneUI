import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditProfilepage extends ConsumerStatefulWidget {
  const EditProfilepage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfilepageState();
}

class _EditProfilepageState extends ConsumerState<EditProfilepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text('Edit Profile'),
                    Icon(Icons.check),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Stack(children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/man.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(75.0, 80, 0, 0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.camera,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'wilsonfranci',
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'Wilson Franci',
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'example@youremail.com',
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: '+62-8421-4512-2531',
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText:
                        'Lorem Ipsum is simply dummy text of the printing ',
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'https://yourwebsite.com',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
