import 'package:flutter/material.dart';

class Attributes extends ChangeNotifier{
  int _weight=60;
  int _age=20;

  int get weight=>_weight;
  int get age=>_age;
  void increment(String val){
    if(val=='WEIGHT'){
      _weight++;
    }
    else{
      _age++;
    }
    notifyListeners();
  }

  void decrement(String val){
    if(val=='WEIGHT'){
      _weight==10?_weight=10:_weight--;
    }
    else{
      _age==1?_age=1:_age--;
    }
    notifyListeners();
  }
}