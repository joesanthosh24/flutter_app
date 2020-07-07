import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final EdgeInsets textPadding;
  final String buttonText;
  final Function onPressed;
  final Color buttonColor;
  final bool inverted;

  ActionButton({
    this.textPadding,
    @required this.buttonText,
    @required this.onPressed,
    @required this.buttonColor,
    @required this.inverted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FlatButton(
        child: Padding(
          padding: textPadding != null
              ? textPadding
              : EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 25,
              color: !inverted ? Colors.white : buttonColor,
            ),
          ),
        ),
        onPressed: onPressed,
        color: !inverted ? buttonColor : Colors.white,
      ),
    );
  }
}
