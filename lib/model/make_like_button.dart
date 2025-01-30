import 'package:flutter/material.dart';

class MakeLikeButton extends StatelessWidget {
  final bool isActive;
  const MakeLikeButton({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
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
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        )));
  }
}
