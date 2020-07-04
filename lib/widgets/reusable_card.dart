import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;

  ReusableCard({this.height, this.width, this.color, this.text});

  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(vertical: 35.0),
      color: color,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
