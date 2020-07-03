import 'package:flutter/material.dart';

import '../widgets/AppScaffold.dart';

class PracticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      screenBody: Container(
        child: Center(
          child: Text('Inside Practice Screen'),
        ),
      ),
    );
  }
}
