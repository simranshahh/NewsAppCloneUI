import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: width * 0.6,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/NewsAuthor.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '  BBC News',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('   14m ago'),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.25,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Following'))
                ],
              ),
              Container(
                height: height * 0.3,
                width: width,
                color: Colors.amber,
                child: Image.asset(
                  'assets/carousal.png',
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                '\nEurope',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "\nUkraine's President Zelensky to BBC: Blood money being paid for Russian oil",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "\nUkrainian President Volodymyr Zelensky has accused European countries that continue to buy Russian oil of earning their money in other people's blood.\n\nIn an interview with the BBC, President Zelensky singled out Germany and Hungary, accusing them of blocking efforts to embargo energy sales, from which Russia stands to make up to £250bn (\$326bn) this year.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
