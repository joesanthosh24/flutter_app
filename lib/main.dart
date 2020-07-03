import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/QuizScreen.dart';
import 'screens/practice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/quiz': (context) => QuizScreen(),
        '/practice': (context) => PracticeScreen(),
      },
    );
  }
}
