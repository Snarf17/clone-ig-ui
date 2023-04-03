import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(7.5),
          child: CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 37,
            child: CircleAvatar(
              radius: 35,
              backgroundImage:
                  NetworkImage('https://i.pravatar.cc/300?u=$name'),
            ),
          ),
        ),
        Text(name)
      ],
    );
  }
}
