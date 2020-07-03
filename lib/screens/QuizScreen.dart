import 'package:first_app/widgets/AppScaffold.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenBody: Container(
        child: Center(
          child: Text('Inside the Quiz'),
        ),
      ),
    );
  }
}
