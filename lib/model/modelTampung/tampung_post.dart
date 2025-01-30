import 'package:flutter/material.dart';

import '../make_feed.dart';

class TampungPost extends StatelessWidget {
  const TampungPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MakeFeed(
          userName: "Jiwon melia",
          userImage: "assets/userImage/enam.jpg",
          feedTime: "1 hr ago",
          feedText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
          feedImage: "assets/postImage/women.jpg",
        ),
        MakeFeed(
          userName: "Aisyah Putri",
          userImage: "assets/userImage/satu.jpg",
          feedTime: "1 hr ago",
          feedText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
          feedImage: "assets/postImage/gojo.jpg",
        ),
        MakeFeed(
          userName: "Navisa jayda",
          userImage: "assets/userImage/lima.jpg",
          feedTime: "1 hr ago",
          feedText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
          feedImage: "assets/postImage/spiderman.jpg",
        ),
        MakeFeed(
          userName: "Navisa jayda",
          userImage: "assets/userImage/lima.jpg",
          feedTime: "1 hr ago",
          feedText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
          feedImage: "assets/postImage/mobil.jpg",
        ),
        MakeFeed(
          userName: "Navisa jayda",
          userImage: "assets/userImage/lima.jpg",
          feedTime: "1 hr ago",
          feedText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
          feedImage: "assets/postImage/senja.jpg",
        ),
        MakeFeed(
          userName: "Navisa jayda",
          userImage: "assets/userImage/lima.jpg",
          feedTime: "1 hr ago",
          feedText:
              "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
          feedImage: "assets/postImage/coffee.jpg",
        ),
      ],
    );
  }
}
