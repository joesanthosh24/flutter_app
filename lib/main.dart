import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';
import 'screens/QuizScreen.dart';
import 'screens/practice.dart';

import './model/VocabData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VocabData(),
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blue,
            accentColor: Colors.green,
            scaffoldBackgroundColor: Colors.white,
            textTheme: TextTheme(
              bodyText2: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            )),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/quiz': (context) => QuizScreen(),
          '/practice': (context) => PracticeScreen(),
        },
      ),
    );
  }
}
