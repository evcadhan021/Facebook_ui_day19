import 'package:flutter/material.dart';

class MakeLove extends StatelessWidget {
  const MakeLove({super.key});

  @override
  Widget build(BuildContext context) {
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
}
