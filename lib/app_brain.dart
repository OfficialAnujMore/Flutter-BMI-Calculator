import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.weight, this.height});
  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Your BMI is higher than normal body weight. Do exercise daily";
    } else if (_bmi > 18.5) {
      return 'Your BMI is perfect than normal body weight';
    } else {
      return 'Your BMI is lower than normal body weight. Do eat more.';
    }
  }
}
