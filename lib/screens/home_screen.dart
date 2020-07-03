import 'package:first_app/widgets/AppScaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return AppScaffold(
      screenBody: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Take Quiz',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/quiz');
                },
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, '/practice');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Practice with Cards',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
