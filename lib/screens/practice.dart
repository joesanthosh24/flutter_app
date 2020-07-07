import 'dart:math';

import 'package:first_app/model/VocabData.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/AppScaffold.dart';
import '../widgets/horizontal_button_group.dart';

class PracticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenBody: Container(
        child: Consumer<VocabData>(
          builder: (context, vocabData, child) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              HorizontalButtonGroup(
                buttons: [
                  FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.arrow_left),
                        Text('Previous Card'),
                      ],
                    ),
                    color: Colors.red,
                    onPressed: () {
                      vocabData.decrementIndex();
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
                      vocabData.incrementIndex();
                    },
                  ),
                ],
              ),
              Text(
                'Touch Card To Flip',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: ReusableCardContainer(
                  displayText: vocabData.getWordAtCurrIndex(),
                ),
                back: ReusableCardContainer(
                  displayText: vocabData.getCurrentWordTranslation(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCardContainer extends StatelessWidget {
  final String displayText;
  final double containerWidth;
  final double containerHeight;

  ReusableCardContainer(
      {this.displayText, this.containerHeight, this.containerWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 450.0,
      color: Colors.blue,
      child: Center(
        child: Text(
          this.displayText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
