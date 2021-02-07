import 'package:flutter/material.dart';

import 'input_page.dart';

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
        children: [
          Text(resultGender.toString()),
          Text(resultAge.toString()),
          Text(resultHeight.toString()),
          Text(resultWeight.toString()),
        ],
      ),
    );
  }
}
