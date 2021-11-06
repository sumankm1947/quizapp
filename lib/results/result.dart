import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class Results extends StatelessWidget {
  final int totalMarks;
  final String userName;
  const Results({Key? key, required this.totalMarks, required this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: heroBackgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.5,
                // decoration: BoxDecoration(
                //   border: Border.all(width: 2),
                // ),
                child: Image(
                  image: AssetImage('assets/images/congratulations.png'),
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 2),
              // ),
              child: FittedBox(
                child: Column(
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Your Score : ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text.rich(
                      TextSpan(
                        text: totalMarks.toString(),
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(
                            text: '/10',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).pop(),
              },
              child: Text('Go Home'),
            )
          ],
        ),
      ),
    );
  }
}
