import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory(
      {Key? key,
      required this.name,
      required this.isMe,
      required this.isLive,
      required this.isStory})
      : super(key: key);

  final String name;
  final bool isMe;
  final bool isLive;
  final bool isStory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(7.5),
          child: Stack(
              alignment:
                  isLive ? Alignment.bottomCenter : Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundColor: isStory
                      ? isMe
                          ? Colors.white
                          : Colors.pink
                      : Colors.white,
                  radius: 37,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/300?u=$name'),
                  ),
                ),
                if (isMe)
                  CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                  ),
                if (isLive)
                  Container(
                    height: 15,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(3)),
                    child: const Text(
                      'Live',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  )
              ]),
        ),
        Text(name)
      ],
    );
  }
}
