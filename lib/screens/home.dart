import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/myCard.dart';
import '../widgets/iconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor=Color(0xFF111328);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
enum Gender{male,female}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
Gender selectedGender=Gender.male;
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
                  child: myCard(
                      tapped:(){
                        setState(() {
                          selectedGender=Gender.male;
                        });
                      },
                    cardChild: iconContent(icon:FontAwesomeIcons.male,iconLabel: 'Male',),
                    color:selectedGender==Gender.male?activeCardColor:inactiveCardColor
                  ),
                ),
                Expanded(
                    child: myCard(
                      tapped:(){
                        setState(() {
                        selectedGender=Gender.female;
                        });
                      },
                      cardChild: iconContent(icon:FontAwesomeIcons.female,iconLabel: 'Female',),
                      color: selectedGender==Gender.female?activeCardColor:inactiveCardColor,
                    ),
                  ),
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

