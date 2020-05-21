import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../providers/attributes.dart';
import 'control_button.dart';
class MyData extends StatelessWidget {
  final String label;

  MyData({this.label});
  @override
  Widget build(BuildContext context) {
    final attributes=Provider.of<Attributes>(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
           label,
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            label=='WEIGHT'?attributes.weight.toString():attributes.age.toString(),
            style: Theme.of(context).textTheme.display2,
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                ControlButton(icon:FontAwesomeIcons.plus,type:label),
                SizedBox(width: 10.0,),
                ControlButton(icon: FontAwesomeIcons.minus,type:label)
            ],
          )
        ],
      );
  }
}
