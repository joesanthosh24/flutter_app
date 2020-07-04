import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/AppScaffold.dart';
import '../widgets/reusable_card.dart';

class PracticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenBody: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                  child: Text('Previous Card'),
                  color: Colors.red,
                  onPressed: () {
                    print('Previous Card pressed');
                  },
                ),
                FlatButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text('Next Card'),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                  color: Colors.green,
                  onPressed: () {
                    print('Next Card Pressed');
                  },
                ),
              ],
            ),
            ReusableCard(
              height: 350.0,
              color: Colors.blue,
              text: "Question",
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text('Flip Card'),
                  color: Colors.green,
                  onPressed: () {
                    print('Flip Card Pressed');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
