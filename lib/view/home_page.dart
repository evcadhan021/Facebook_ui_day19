import 'package:flutter/material.dart';

import '../model/story.dart';

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
            height: 120,
            color: const Color.fromARGB(255, 19, 88, 144),
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 10,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 28,
                )
              ],
            ),
          ),
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
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Story(
                            storyImage: "assets/pizza.jpg",
                            userImage: "assets/userImage/satu.jpg",
                            userName: "Aisyah Putri",
                          ),
                          Story(
                            storyImage: "assets/ayam.jpg",
                            userImage: "assets/userImage/dua.jpg",
                            userName: "Crisia amelia",
                          ),
                          Story(
                            storyImage: "assets/daging.jpg",
                            userImage: "assets/userImage/tiga.jpg",
                            userName: "Vita asmina",
                          ),
                          Story(
                            storyImage: "assets/spagety.jpg",
                            userImage: "assets/userImage/empat.jpg",
                            userName: "Syarah nurmaisa",
                          ),
                          Story(
                            storyImage: "assets/pizza.jpg",
                            userImage: "assets/userImage/lima.jpg",
                            userName: "Navisa jayda",
                          ),
                          Story(
                            storyImage: "assets/daging.jpg",
                            userImage: "assets/userImage/enam.jpg",
                            userName: "Jiwon melia",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    makeFeed(
                      userName: "Jiwon melia",
                      userImage: "assets/userImage/enam.jpg",
                      feedTime: "1 hr ago",
                      feedText:
                          "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                      feedImage: "assets/postImage/women.jpg",
                    ),
                    makeFeed(
                      userName: "Aisyah Putri",
                      userImage: "assets/userImage/satu.jpg",
                      feedTime: "1 hr ago",
                      feedText:
                          "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                      feedImage: "assets/postImage/gojo.jpg",
                    ),
                    makeFeed(
                      userName: "Navisa jayda",
                      userImage: "assets/userImage/lima.jpg",
                      feedTime: "1 hr ago",
                      feedText:
                          "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                      feedImage: "assets/postImage/spiderman.jpg",
                    ),
                    makeFeed(
                      userName: "Navisa jayda",
                      userImage: "assets/userImage/lima.jpg",
                      feedTime: "1 hr ago",
                      feedText:
                          "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                      feedImage: "assets/postImage/mobil.jpg",
                    ),
                    makeFeed(
                      userName: "Navisa jayda",
                      userImage: "assets/userImage/lima.jpg",
                      feedTime: "1 hr ago",
                      feedText:
                          "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                      feedImage: "assets/postImage/senja.jpg",
                    ),
                    makeFeed(
                      userName: "Navisa jayda",
                      userImage: "assets/userImage/lima.jpg",
                      feedTime: "1 hr ago",
                      feedText:
                          "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                      feedImage: "assets/postImage/coffee.jpg",
                    ),
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

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
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
                  makeLike(),
                  Transform.translate(
                    offset: const Offset(-5, 0),
                    child: makeLove(),
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
          Row(
            children: [
              makeLikeButton(isActive: true),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.thumb_up, color: Colors.white, size: 12),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.favorite, color: Colors.white, size: 12),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: isActive ? Colors.blue : Colors.grey),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey),
            SizedBox(width: 5),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        )));
  }

  Widget makeCommentButton() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: Colors.grey),
            SizedBox(width: 5),
            Text(
              "Like",
              style: TextStyle(color: Colors.grey),
            )
          ],
        )));
  }

  Widget makeShareButton() {
    return Container();
  }
}
