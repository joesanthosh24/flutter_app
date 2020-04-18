import 'package:flutter/material.dart';

void main() {
  var materialApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('My App'),
        ),
      ),
    ),
  );
  runApp(materialApp);
}
