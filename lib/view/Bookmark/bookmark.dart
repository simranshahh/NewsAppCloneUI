import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/Homepage/Home/tabbar/all.dart';

class Bookmark extends ConsumerStatefulWidget {
  const Bookmark({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BookmarkState();
}

class _BookmarkState extends ConsumerState<Bookmark> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Bookmarks',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.menu),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'Search',
                  ),
                ),
                SizedBox(height: height, child: All())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
