import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget screenBody;

  AppScaffold({this.screenBody});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bible Quiz App'),
      ),
      body: screenBody,
    );
  }
}
