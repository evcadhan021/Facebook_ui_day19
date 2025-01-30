import 'package:flutter/material.dart';

class MakeLike extends StatelessWidget {
  const MakeLike({super.key});

  @override
  Widget build(BuildContext context) {
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
}
