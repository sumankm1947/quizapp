import 'package:flutter/material.dart';

import './home/myHomePage.dart';
import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s Quiz',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        backgroundColor: heroBackgroundColor,
      ),
      home: MyHomePage(),
    );
  }
}
