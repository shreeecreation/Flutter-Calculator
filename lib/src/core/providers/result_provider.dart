import 'package:flutter/material.dart';

class ResultProvider extends ChangeNotifier {
  var _result = "";
  var _expressionFont = const TextStyle();
  var _resultFont = const TextStyle();
  var _isEqualPressed = false;

  TextStyle simpleButtonPressedExpression = const TextStyle(fontSize: 29, color: Colors.white);

  TextStyle simpleButtonPressedResult = const TextStyle(fontSize: 20, color: Colors.grey);

  TextStyle equalButtonPressedExpression = const TextStyle(fontSize: 20, color: Colors.grey);

  TextStyle equalButtonPressedResult = const TextStyle(fontSize: 29, color: Colors.white);

  String get getResult {
    return _result;
  }

  bool get isEqualPressed {
    return _isEqualPressed;
  }

  TextStyle get getExpressionFont {
    return _expressionFont;
  }

  TextStyle get getResultFont {
    return _resultFont;
  }

  void updateResultSimple(dynamic answer) {
    _isEqualPressed = false;
    _result = answer;
    _expressionFont = simpleButtonPressedExpression;
    _resultFont = simpleButtonPressedResult;
    notifyListeners();
  }

  void updateResultEqual(dynamic answer) {
    _isEqualPressed = true;
    _result = answer;
    _expressionFont = equalButtonPressedExpression;
    _resultFont = equalButtonPressedResult;
    notifyListeners();
  }

  void makeResultNull() {
    _result = "0";

    notifyListeners();
  }
}
