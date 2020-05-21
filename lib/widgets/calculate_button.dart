import 'package:flutter/material.dart';
import '../constants.dart';

class CalculateButton extends StatelessWidget {
  final String label;
  final Function pressed;
  CalculateButton({this.label, this.pressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pressed(),
      child: Container(
        child: Center(
          child: Text(
            label,
            style: Theme.of(context)
                .textTheme
                .display2
                .copyWith(fontWeight: FontWeight.w500, fontSize: 30),
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
