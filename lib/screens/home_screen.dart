import 'package:first_app/widgets/AppScaffold.dart';
import 'package:flutter/material.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: buildBottomSheet);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Add a Word',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
