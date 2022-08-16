import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final Color? color;
  const MyCircle({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
