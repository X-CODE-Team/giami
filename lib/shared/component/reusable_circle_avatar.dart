import 'package:flutter/material.dart';

class ReusableCircleAvatar extends StatelessWidget {
  double radius;
  Color color;
  ReusableCircleAvatar({
    this.radius = 35,
    this.color = Colors.grey,
  });
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: CircleAvatar(
        radius: radius - 2,
        backgroundImage: NetworkImage(
          'https://i.pinimg.com/originals/62/3a/a8/623aa8f9933ee9a286871bf6e0782538.jpg',
        ),
      ),
    );
  }
}
