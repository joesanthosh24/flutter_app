import 'package:first_app/widgets/AppScaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/action_button.dart';

class HomeScreen extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
    return Container(
      height: 1000.0,
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                textAlign: TextAlign.center,
                onChanged: (newVal) {},
                decoration: InputDecoration(hintText: 'Add Word (in Japanese)'),
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (newVal) {},
                decoration:
                    InputDecoration(hintText: 'Add in Kanji (if Applicable)'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: FloatingActionButton(
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return AppScaffold(
      screenBody: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ActionButton(
              buttonText: 'Take Quiz',
              buttonColor: Colors.green,
              inverted: false,
              textPadding: EdgeInsets.symmetric(vertical: 15.0),
              onPressed: () {
                Navigator.pushNamed(context, '/quiz');
              },
            ),
            ActionButton(
              buttonText: 'Practice with Cards',
              buttonColor: Colors.blue,
              inverted: false,
              textPadding: EdgeInsets.symmetric(vertical: 15.0),
              onPressed: () {
                Navigator.pushNamed(context, '/practice');
              },
            ),
            ActionButton(
              buttonText: 'Add a Word',
              buttonColor: Colors.deepPurpleAccent,
              inverted: true,
              textPadding: EdgeInsets.symmetric(vertical: 15.0),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: buildBottomSheet,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
