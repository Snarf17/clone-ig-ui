import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon Profil and name user
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      // radius: ,
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/150?u=$name'),
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),

              // Icons More (3  dots)
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Row(
                  children: [Icon(Icons.more_horiz_outlined)],
                ),
              )
            ],
          ),
        ),

        // Content Image
        SizedBox(
          height: 310,
          width: 360,
          child: Image.network(
            'https://i.pravatar.cc/800/500?random=$name',
            fit: BoxFit.fill,
          ),
        ),

        // Icons Dibawah Gambar
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon Like, Comment, and Send
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Icon(
                    Icons.chat_bubble_outline,
                    size: 26,
                  ),
                ),
                Icon(
                  Icons.send_outlined,
                  size: 26,
                )
              ],
            ),

            // Icon Save
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.save_outlined,
                    size: 26,
                  ),
                )
              ],
            ),
          ],
        ),

        // Liked By..
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                ' Nadin',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: RichText(
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                TextSpan(
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' Minim cupidatat nostrud voluptate excepteur pariatur sint mollit consequat minim exercitation do esse. Non consequat magna dolore velit sunt ',
                    style: TextStyle(color: Color.fromARGB(173, 0, 0, 0)))
              ])),
        )
      ],
    );
  }
}
