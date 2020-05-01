import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculateBrain {
  CalculateBrain({
    @required this.weight,
    @required this.height,
  });
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal weight';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your weight are quite big. You have to do a lot of exercises';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'You have a higher that normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. You should eat a bit more.';
    }
  }
}
