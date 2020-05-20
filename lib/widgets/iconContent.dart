import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  final IconData icon;
  final String iconLabel;
  iconContent({this.icon,this.iconLabel});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 60.0,),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.display1,
        )
      ],
    );
  }
}
