import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/questions.dart';

class Options extends StatelessWidget {
  final int questionCount, optionCount;
  const Options(
      {Key? key, required this.optionCount, required this.questionCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: heroSecondary, width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sample_data[questionCount]['options'][optionCount]),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: heroSecondary, width: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
