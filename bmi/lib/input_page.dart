import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectedGender;
  int curheight = 180;
  int min = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    // MALE
                    child: ReusableCard(
                      colour: selectedGender == gender.male
                          ? kactiveCardColour
                          : kinactiveCardColour,
                      cardChild: IconContent(
                        iconSex: FontAwesomeIcons.mars,
                        textSex: 'MALE',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    // FEMALE
                    child: ReusableCard(
                      colour: selectedGender == gender.female
                          ? kactiveCardColour
                          : kinactiveCardColour,
                      cardChild: IconContent(
                        iconSex: FontAwesomeIcons.venus,
                        textSex: 'FEMALE',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          curheight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: klabelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: curheight.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double value) {
                        setState(() {
                          curheight = value.round();
                          print(curheight);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: kactiveCardColour,
                  )),
                  Expanded(
                    child: ReusableCard(
                      colour: kactiveCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: kbottomContainerHeight,
              color: kbottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ));
  }
}
