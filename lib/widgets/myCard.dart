import 'package:flutter/material.dart';
class myCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  myCard({this.color,this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color
        ),
        margin: EdgeInsets.all(15.0)
    );
  }
}