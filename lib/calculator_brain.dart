import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  CalculatorBrain({this.weight, this.height});
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have a body weight higher than normal. You should exercise more!';
    else if (_bmi > 18.5)
      return 'You have a normal body weight! Good Job!';
    else
      return 'You have a body weight lower than normal. You should increase your diet!';
  }
}
