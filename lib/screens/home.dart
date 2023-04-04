import 'package:clone_ig/models/content_model.dart';
import 'package:clone_ig/widgets/bubble_story.dart';
import 'package:clone_ig/widgets/user_post.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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

  final String dataUrl =
      'https://pixabay.com/api/?key=35053945-44086013d2d6b722089aa19da&q=yellow+flowers&image_type=photo&pretty=true';
  final dio = Dio();

  Future<List<Content>> getListContent() async {
    final response = await dio.get(dataUrl);
    final dataModel =
        ContentModel.fromJson(response.data as Map<String, dynamic>);
    return dataModel.listContent;
  }

  List<Content> listContent = [];

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    getListContent().then(((result) {
      listContent = result;
      _isLoading = false;
      setState(() {});
    }));
  }

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
                return BubbleStory(
                  name: name[index],
                  isMe: index == 0 ? true : false,
                  isLive: index == 1 ? true : false,
                  isStory: index % 2 == 0 ? true : false,
                );
              },
              itemCount: name.length,
            ),
          ),
          Divider(
            height: 1,
            thickness: 0,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UserPost(
                  content: listContent[index],
                );
              },
              itemCount: listContent.length,
            ),
          )
        ],
      ),
    );
  }
}
