import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'myCard.dart';
import 'button.dart';
class MyData extends StatelessWidget {
  final String label;
  MyData({this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
           label,
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            "10",
            style: Theme.of(context).textTheme.display2,
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Button(icon:FontAwesomeIcons.plus,),
                SizedBox(width: 10.0,),
                Button(icon: FontAwesomeIcons.minus,)
            ],
          )
        ],
      );
  }
}
