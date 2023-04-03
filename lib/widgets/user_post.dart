import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            // radius: ,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=$name'),
          ),
        ),
        Text(
          name,
        )
      ],
    );
  }
}
