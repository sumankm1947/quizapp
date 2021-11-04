import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int totalMarks;
  const Results({Key? key, required this.totalMarks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(totalMarks.toString()),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
