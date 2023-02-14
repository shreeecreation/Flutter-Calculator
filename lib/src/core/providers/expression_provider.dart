import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/app/buttongrid/domain/result_manager.dart';

import 'result_provider.dart';

class ExpressionProvider extends ChangeNotifier {
  var _expression = "";

  String get getExpression {
    return _expression;
  }

  void updateExpression(dynamic value, dynamic controller, context, resultController) {
    var isEqualbuttonPressed = Provider.of<ResultProvider>(context, listen: false).isEqualPressed;
    var controllerText = Provider.of<ResultProvider>(context, listen: false).getResult;

    if (isEqualbuttonPressed) {
      if (value.endsWith("/") || value.endsWith("*") || value.endsWith("+") || value.endsWith("-")) {
        var finalControllerText = controllerText.substring(2);
        var operator = value.substring(value.length - 1);
        controller.text = "$finalControllerText$operator";
        Provider.of<ResultProvider>(context, listen: false).updateResultSimple(finalControllerText);
      } else {
        for (var i = 0; i < ResultManager.numbers.length; i++) {
          if (value.endsWith(ResultManager.numbers[i])) {
            controller.text = ResultManager.numbers[i];
            resultController.text = ResultManager.numbers[i];
            Provider.of<ResultProvider>(context, listen: false).updateResultSimple(ResultManager.numbers[i]);
          }
        }
      }
    } else {
      if (value.endsWith("/") || value.endsWith("*") || value.endsWith("+") || value.endsWith("-")) {
        if (_expression.endsWith("/") || _expression.endsWith("*") || _expression.endsWith("+") || _expression.endsWith("-")) {
          controller.text = controller.text.substring(0, controller.text.length - 1);
          _expression = controller.text;
        }
      }
      if (_expression.length >= 30) {
        _expression = _expression;
      } else {
        controller.text = controller.text + value;
        _expression = controller.text;
      }
    }
    notifyListeners();
  }

  void resetExpression(expressionController, resultController) {
    expressionController.text = "";
    resultController.text = "0";
    _expression = "";
    notifyListeners();
  }

  void oneStepBackExpression(controller) {
    if (controller.text != null && controller.text.length > 0) {
      controller.text = controller.text.substring(0, controller.text.length - 1);
      _expression = controller.text;
    }
    notifyListeners();
  }
}
