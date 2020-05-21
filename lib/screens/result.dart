import 'package:flutter/cupertino.dart';
import '../screens/home.dart';
import '../widgets/myCard.dart';
import '../constants.dart';
import '../widgets/calculate_button.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Your Result',
              style: Theme.of(context).textTheme.display2,
            ),
          ),
          Expanded(
            child: myCard(
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF24D876),
                          fontWeight: FontWeight.bold),
                    ),
                    Text('26.5',
                        style: Theme.of(context)
                            .textTheme
                            .display2
                            .copyWith(fontSize: 100)),
                    Text(
                      'You have a normal body weight',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )
                  ],
                ),
                color: kActiveCardColor),
          ),
          CalculateButton(
              label: 'RE-CALCULATE',
              pressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
        ],
      ),
    );
  }
}
