import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions.dart';

import 'components/question_card.dart';
import 'components/progress_bar.dart';
import '../results/result.dart';
import '../constants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _totalMarks = 0;
  int _count = 0;
  int _timer = timeForEachQuestion;
  bool clicked = false;

  @override
  void initState() {
    _timerForQuiz();
    super.initState();
  }

  void _timerForQuiz() async {
    const onesec = Duration(seconds: 1);

    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (_timer > 0) {
          _timer--;
        } else {
          t.cancel();
          _optionController(-1);
          _timerForQuiz();
        }
      });
    });
  }

  void _optionController(int choice) {
    _timer = timeForEachQuestion;
    if (choice == sample_data[_count]["answer_index"]) {
      _totalMarks = _totalMarks + 1;
    } else {
      print('Wrong');
    }
    setState(() {
      _count = _count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _count < sample_data.length
        ? Scaffold(
            backgroundColor: heroBackgroundColor,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: heroBackgroundColor,
              elevation: 0,
              actions: [
                TextButton(
                  onPressed: () => {},
                  child: Text('Skip'),
                ),
              ],
            ),
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: ProgressBar(
                      count: _count,
                      optionController: _optionController,
                      counter: _timer,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: QuestionCard(
                        questionCounter: _count,
                        optionController: _optionController),
                  ),
                ],
              ),
            ),
          )
        : Results(totalMarks: _totalMarks);
  }
}
