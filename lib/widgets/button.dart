import 'package:flutter/material.dart';
class Button extends StatelessWidget {

  final IconData icon;
  Button({this.icon});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Color(0xFF111328),
        radius: 25.0,
        child: Icon(icon,color: Colors.white,),
      ),
    );
  }
}
