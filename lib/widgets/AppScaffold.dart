import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget screenBody;

  AppScaffold({this.screenBody});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Japanese Quiz App'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 20.0,
        ),
        child: screenBody,
      ),
    );
  }
}
