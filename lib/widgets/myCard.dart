import 'package:flutter/material.dart';
class myCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function tapped;
  myCard({this.color,this.cardChild,this.tapped});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Container(
        child: cardChild,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color
          ),
          margin: EdgeInsets.all(15.0)
      ),
    );
  }
}