import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/myCard.dart';
import '../widgets/iconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: myCard(
                      cardChild: iconContent(icon:FontAwesomeIcons.male,iconLabel: 'Male',),
                      color: activeCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: myCard(
                    cardChild: iconContent(icon:FontAwesomeIcons.female,iconLabel: 'Female',),
                    color: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: myCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: myCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: myCard(
                    color: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

