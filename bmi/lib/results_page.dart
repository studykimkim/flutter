import 'package:flutter/material.dart';

import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'input_page.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {this.resultGender,
      this.resultAge,
      this.resultHeight,
      this.resultWeight});

  final gender resultGender;
  final int resultHeight;
  final int resultWeight;
  final int resultAge;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'good',
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
