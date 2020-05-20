import 'package:bmicalculator/providers/attributes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
class Button extends StatelessWidget {
  final IconData icon;
  final String type;
  Button({this.icon,this.type});
  @override
  Widget build(BuildContext context) {
    final attributes=Provider.of<Attributes>(context);
    return GestureDetector(
      onTap: (){
        if(icon==FontAwesomeIcons.plus) {
          attributes.increment(type);
        }
        else{
          attributes.decrement(type);
        }
      },
      child: CircleAvatar(
        backgroundColor: Color(0xFF111328),
        radius: 25.0,
        child: Icon(icon,color: Colors.white,),
      ),
    );
  }
}
