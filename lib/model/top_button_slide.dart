import 'package:flutter/material.dart';

class TopButtonSlide extends StatelessWidget {
  const TopButtonSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 6),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 2, color: Color.fromARGB(255, 24, 105, 172)))),
            child: const Icon(
              Icons.home_filled,
              size: 35,
              color: Color.fromARGB(255, 24, 105, 172),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            child: const Icon(
              Icons.ondemand_video,
              size: 35,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            child: const Icon(
              Icons.group_outlined,
              size: 35,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            child: const Icon(
              Icons.person,
              size: 35,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            child: const Icon(
              Icons.notifications_none_rounded,
              size: 35,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            child: const Icon(
              Icons.menu_rounded,
              size: 35,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
