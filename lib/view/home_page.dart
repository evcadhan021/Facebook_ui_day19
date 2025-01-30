import 'package:facebook_ui_day19/model/modelTampung/tampung_post.dart';
import 'package:facebook_ui_day19/model/modelTampung/tampung_story.dart';
import 'package:facebook_ui_day19/model/top_button_slide.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 100,
            // color: Colors.red,
            padding: const EdgeInsets.only(
              top: 35,
              left: 10,
              right: 10,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Facebook",
                  style: TextStyle(
                    color: Color.fromARGB(255, 24, 105, 172),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_box,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.message,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
          const TopButtonSlide(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Stories',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        const Text('See Archive'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TampungStory(),
                    const SizedBox(height: 40),
                    const TampungPost(),
                    const SizedBox(height: 50)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
