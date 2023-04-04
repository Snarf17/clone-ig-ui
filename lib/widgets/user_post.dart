import 'package:flutter/material.dart';

import '../models/content_model.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.content});
  final Content content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
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
                        backgroundImage: NetworkImage(content.userImageUrl),
                      ),
                    ),
                    Text(
                      '${content.user} ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
            height: 205,
            width: 360,
            child: Image.network(
              content.largeImageUrl,
              fit: BoxFit.cover,
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

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                  TextSpan(
                      text: '${content.user} ',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: content.tags,
                      style:
                          const TextStyle(color: Color.fromARGB(173, 0, 0, 0)))
                ])),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Column(
              children: [
                Text(
                  'View all comment....',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 2, 0, 5),
            child: Column(
              children: [
                Text(
                  '17 April 2002',
                  style: TextStyle(color: Colors.black26, fontSize: 11),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
