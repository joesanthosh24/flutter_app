import 'package:flutter/material.dart';

class HorizontalButtonGroup extends StatelessWidget {
  final List<FlatButton> buttons;

  HorizontalButtonGroup({@required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: buttons,
    );
  }
}
