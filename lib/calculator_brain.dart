import 'dart:ffi';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {required this.height,
      required this.weight,
      required this.age,
      required this.check});

  final int height;
  final int weight;
  final int age;
  final int check;

  double _calo=100;

  Void? calculateBMI() {
    if (check == 1) {
      _calo = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else {
      _calo = (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }

    return null;
    // return _calo.toStringAsFixed(0);
  }

  String getResult() {
    double calo1 = _calo + 315;
    double calo2 = _calo + 415;
    double calo3 = _calo + 590;
    double calo4 = _calo + 790;
    String result ='Required calories with moderate excercise to lose weight: $calo1 to $calo2 Kcal \n\n Required calories with moderate excercise to lose weight: $calo3 to $calo4 Kcal';
    return result;
  }

  String getInterpretation() {
    return '';
    // if (_bmi >= 25) {
    //   return 'You have a higher than normal body weight. Try to exercise more.';
    // } else if (_bmi >= 18.5) {
    //   return 'You have a normal body weight. Good job!';
    // } else {
    //   return 'You have a lower than normal body weight. You can eat a bit more.';
    // }
  }
}
