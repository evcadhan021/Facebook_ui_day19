import 'package:facebook_ui_day19/model/make_comment_button.dart';
import 'package:facebook_ui_day19/model/make_like.dart';
import 'package:facebook_ui_day19/model/make_like_button.dart';
import 'package:facebook_ui_day19/model/make_love.dart';
import 'package:facebook_ui_day19/model/make_share_button.dart';
import 'package:flutter/material.dart';

class MakeFeed extends StatelessWidget {
  final String userImage;
  final String userName;
  final String feedTime;
  final String feedText;
  final String feedImage;
  const MakeFeed(
      {super.key,
      required this.userImage,
      required this.userName,
      required this.feedTime,
      required this.feedText,
      required this.feedImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 1,
                        ),
                      ),
                      Text(
                        feedTime,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.grey[600],
                  ))
            ],
          ),
          const SizedBox(height: 20),
          Text(
            feedText,
            style: TextStyle(color: Colors.grey[800], height: 1.5),
          ),
          const SizedBox(height: 20),
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const MakeLike(),
                  Transform.translate(
                    offset: const Offset(-5, 0),
                    child: const MakeLove(),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "2.5K",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              SizedBox(width: 20),
              Text(
                "400 Comments",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          const Row(
            children: [
              MakeLikeButton(isActive: true),
              MakeCommentButton(),
              MakeShareButton(),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
