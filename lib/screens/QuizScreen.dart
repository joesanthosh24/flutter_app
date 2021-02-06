import 'package:first_app/widgets/AppScaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenBody: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ReusableCard(
              height: 180.0,
              color: Colors.green,
              text: 'Question',
            ),
            Text("Not Yet Completed", style: TextStyle(
              height: 20,
              color: Colors.red,
            ),),
          ],
        ),
      ),
    );
  }
}
