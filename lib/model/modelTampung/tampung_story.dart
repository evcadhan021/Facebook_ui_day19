import 'package:flutter/material.dart';

import '../story.dart';

class TampungStory extends StatelessWidget {
  const TampungStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
