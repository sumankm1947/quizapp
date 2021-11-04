import 'package:flutter/material.dart';

import '../../constants.dart';

class ProgressBar extends StatefulWidget {
  final int count;
  final int counter;
  final Function optionController;
  ProgressBar(
      {Key? key,
      required this.count,
      required this.optionController,
      required this.counter})
      : super(key: key);
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(constraints.maxHeight * 0.1),
              decoration: BoxDecoration(
                color: heroBackgroundColor,
                border: Border.all(width: 2, color: heroSecondary),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: heroBackgroundColorDark,
                    offset: Offset(4, 4),
                    blurRadius: 15.0,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: heroBackgroundColorLight,
                    offset: Offset(-4, -4),
                    blurRadius: 15.0,
                    spreadRadius: 1,
                  ),
                ],
              ),
              height: constraints.maxHeight * 0.4,
              width: constraints.maxHeight * 0.4,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '${widget.counter}s',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: heroPrimary,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1,
            ),
            FittedBox(
              child: Container(
                height: constraints.maxHeight * 0.3,
                child: Text.rich(
                  TextSpan(
                    text: 'Question ${widget.count + 1}',
                    style: Theme.of(context).textTheme.headline4,
                    children: [
                      TextSpan(
                        text: '/10',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
