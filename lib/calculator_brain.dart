import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight, required this.age});

  final int height;
  final int weight;
  final int age;

  double _calo=0;

  String calculateBMI() {
    _calo = (10*weight)+(6.25*height)-(5*age)+5;
    return _calo.toStringAsFixed(0);
  }

  String getResult() {
    String result='required calories with moderate excercise to lose weight: $_calo+315 to $_calo+415 Kcal';
    return result;
  }

  String getInterpretation() {
    return 'ye';
    // if (_bmi >= 25) {
    //   return 'You have a higher than normal body weight. Try to exercise more.';
    // } else if (_bmi >= 18.5) {
    //   return 'You have a normal body weight. Good job!';
    // } else {
    //   return 'You have a lower than normal body weight. You can eat a bit more.';
    // }
  }
}
