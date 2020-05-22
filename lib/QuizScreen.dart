import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bible Quiz App'),
      ),
      body: Container(
        child: Center(
          child: Text('Inside the Quiz'),
        ),
      ),
    );
  }
}
