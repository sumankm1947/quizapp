import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/quiz/quiz_screen.dart';

import '../constants.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _nameController = TextEditingController();
  void onSubmit() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizScreen(userName: _nameController.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(
                flex: 2,
              ),
              Container(
                child: Center(
                  child: Text(
                    'Let\'s Quiz',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: heroRed1,
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: heroBackgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: heroBackgroundColorDark,
                      offset: Offset(10, 10),
                      blurRadius: 15.0,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: heroBackgroundColorLight,
                      offset: Offset(-10, -10),
                      blurRadius: 15.0,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  style: TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'Name',
                  ),
                  onSubmitted: (_) => onSubmit(),
                  controller: _nameController,
                ),
              ),
              Spacer(),
              Container(
                // color: Theme.of(context).backgroundColor,
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextButton(
                  onPressed: () {
                    if (_nameController.text.isEmpty) return;
                    onSubmit();
                  },
                  child: Text(
                    'start',
                    style: TextStyle(
                      fontSize: 30,
                      color: heroCyan,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: heroBackgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: heroBackgroundColorDark,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: heroBackgroundColorLight,
                      offset: Offset(-5.0, -5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
