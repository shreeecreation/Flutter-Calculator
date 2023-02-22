import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/app/buttongrid/domain/result_manager.dart';
import 'package:scientific_calculato/src/core/providers/history_provider.dart';
import 'result_provider.dart';

class ExpressionProvider extends ChangeNotifier {
  var _expression = "";

  String get getExpression {
    return _expression;
  }

  void updateExpression(dynamic value, dynamic controller, context, resultController, isEqualbuttonPressed) {
    var resultText = Provider.of<ResultProvider>(context, listen: false).getResult;
    List operators = ["+", "-", "/", "*"];

    //If user presssed any operator before pressing button
    if (_expression.isEmpty) {
      for (int i = 0; i < operators.length; i++) {
        if (value == operators[i]) {
          controller.text = "0$value";
          _expression = controller.text;
          Provider.of<ResultProvider>(context, listen: false).updateResultSimple("0");
        }
      }
    }

    // If % button is pressed while not any operator is pressed
    if (_expression == "") {
      if (value == "%") {}
    }
    if (value == "%" &&
        !_expression.contains("/") &&
        !_expression.contains("*") &&
        !_expression.contains("+") &&
        !_expression.contains("-") &&
        _expression != "") {
      String percentExpression = controller.text;
      var finalPercentExpression = int.parse(percentExpression);
      var finalAnswer = finalPercentExpression / 100;
      var controllerAnswer = finalAnswer.toString();
      controller.text = controllerAnswer.substring(0, controllerAnswer.length);
      _expression = controller.text;
    } else {
      if (value == "%") {
        if (_expression.contains("/") || _expression.contains("*") || _expression.contains("+") || _expression.contains("-")) {
          return;
        }
      } else {
        //If equal button is pressed for knowing the answer

        if (isEqualbuttonPressed) {
          //If result is in Infinity mode

          if (resultController.text == " = Infinity" || resultController.text == " = NaN") {
            for (int i = 0; i < operators.length; i++) {
              if (value == operators[i]) {
                controller.text = "0$value";
                _expression = controller.text;
                Provider.of<ResultProvider>(context, listen: false).updateResultSimple("0");
              }
            }
          } else {
            if (value.endsWith("/") || value.endsWith("*") || value.endsWith("+") || value.endsWith("-")) {
              var finalControllerText = resultText.substring(2);
              Provider.of<HistoryProvider>(context, listen: false).addHistory(
                {"exp": _expression, "result": finalControllerText},
              );
              Provider.of<ResultProvider>(context, listen: false).updateResultSimple(finalControllerText);

              controller.text = "$finalControllerText$value";
              _expression = controller.text;
            }
            //If equal button is pressed and number was pressed

            else {
              var finalControllerText = resultText.substring(2);

              for (var i = 0; i < ResultManager.numbers.length; i++) {
                if (value.endsWith(ResultManager.numbers[i])) {
                  Provider.of<HistoryProvider>(context, listen: false).addHistory(
                    {"exp": _expression, "result": finalControllerText},
                  );
                  controller.text = ResultManager.numbers[i];
                  _expression = controller.text;

                  resultController.text = ResultManager.numbers[i];
                  Provider.of<ResultProvider>(context, listen: false).updateResultSimple(ResultManager.numbers[i]);
                }
              }
              //If equal button is pressed and operator was pressed
            }
          }
        } else {
          //If there is double point in an expression

          // If user tried to press double operator
          if (value.endsWith("/") || value.endsWith("*") || value.endsWith("+") || value.endsWith("-")) {
            if (_expression.endsWith("/") || _expression.endsWith("*") || _expression.endsWith("+") || _expression.endsWith("-")) {
              controller.text = controller.text.substring(0, controller.text.length - 1);
              _expression = controller.text;
            }
          }
          if (_expression.length >= 40) {
            _expression = _expression;
          } else {
            // If user tried to press double operator

            controller.text = controller.text + value;
            _expression = controller.text;

            ResultManager.resultManagerNormalButton(context, controller, resultController);
          }
        }
      }

      notifyListeners();
    }
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
