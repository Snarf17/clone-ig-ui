import 'package:clone_ig/widgets/bubble_story.dart';
import 'package:clone_ig/widgets/user_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List name = [
    'test',
    'test1',
    'test2',
    'test3',
    'test4',
    'test5',
    'test6',
    'test7',
    'test8',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: const Text(
          'Instagram',
          style:
              TextStyle(color: Colors.black87, fontSize: 26, letterSpacing: 2),
        ),
        elevation: 0,
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 28,
            color: Colors.black87,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Icon(
              Icons.favorite_border_outlined,
              size: 28,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.send_outlined,
              size: 28,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubbleStory(name: name[index]);
              },
              itemCount: name.length,
            ),
          ),
          Divider(
            height: 1,
            thickness: 0,
          ),
          UserPost(name: 'robert')
        ],
      ),
    );
  }
}
