import '../calculator_brain.dart';
import 'package:provider/provider.dart';
import '../providers/attributes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/calculate_button.dart';
import '../screens/result.dart';
import '../widgets/myData.dart';
import '../widgets/myCard.dart';
import '../widgets/iconContent.dart';
import '../constants.dart';

enum Gender { male, female }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Gender selectedGender = Gender.male;
  double sliderValue = 50.0;
  @override
  Widget build(BuildContext context) {
    final attributes = Provider.of<Attributes>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: myCard(
                      tapped: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.male,
                        iconLabel: 'MALE',
                      ),
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor),
                ),
                Expanded(
                  child: myCard(
                    tapped: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.female,
                      iconLabel: 'FEMALE',
                    ),
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: myCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        sliderValue.round().toString(),
                        style: Theme.of(context).textTheme.display2,
                      ),
                      Text('cm', style: Theme.of(context).textTheme.display1),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                      min: 50.0,
                      max: 350.0,
                      value: sliderValue,
                      onChanged: (val) {
                        setState(() {
                          sliderValue = val;
                        });
                      },
                    ),
                  )
                ],
              ),
              color: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: myCard(
                    cardChild: MyData(
                      label: 'WEIGHT',
                    ),
                    color: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: myCard(
                    cardChild: MyData(label: 'AGE'),
                    color: kActiveCardColor,
                  ),
                )
              ],
            ),
          ),
          CalculateButton(
            label: 'CALCULATE',
            pressed: () {
              CalculatorBrain brain = CalculatorBrain(
                  height: sliderValue.toInt(), weight: attributes.weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    bmi: brain.calculateBMI(),
                    result: brain.getResult(),
                    interpretation: brain.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
