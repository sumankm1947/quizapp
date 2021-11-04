import 'package:flutter/material.dart';

import '../../models/questions.dart';
import 'options.dart';

class QuestionCard extends StatelessWidget {
  final int questionCounter;
  final Function optionController;
  const QuestionCard(
      {Key? key, required this.questionCounter, required this.optionController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              sample_data[questionCounter]['question'],
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () => optionController(0),
              child: Options(optionCount: 0, questionCount: questionCounter),
            ),
            InkWell(
              onTap: () => optionController(1),
              child: Options(optionCount: 1, questionCount: questionCounter),
            ),
            InkWell(
              onTap: () => optionController(2),
              child: Options(optionCount: 2, questionCount: questionCounter),
            ),
            InkWell(
              onTap: () => optionController(3),
              child: Options(optionCount: 3, questionCount: questionCounter),
            ),
          ],
        ),
      ),
    );
  }
}
