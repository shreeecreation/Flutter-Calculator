import 'package:math_expressions/math_expressions.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/core/providers/result_provider.dart';

class ResultManager {
  static List numbers = ["9", "8", "7", "6", "5", "4", "3", "2", "1", "0"];
  static void resultManagerEqualButton(context, expressionController, resultController) {
    String result;
    if (expressionController.text.length <= 0 || expressionController == null) {
      return;
    }
    try {
      Parser p = Parser();
      Expression exp = p.parse(
        expressionController.text,
      );

      ContextModel cm = ContextModel();
      result = ' = ${exp.evaluate(EvaluationType.REAL, cm)}';
    } catch (e) {
      Parser p = Parser();
      var finalValue = expressionController.text.substring(0, expressionController.text.length - 1);
      Expression exp = p.parse(
        finalValue,
      );

      ContextModel cm = ContextModel();
      result = ' = ${exp.evaluate(EvaluationType.REAL, cm)}';
    }
    String newResult = result.substring(result.length - 2);

    if (newResult == ".0") {
      if (newResult == ".0") {
        result = result.substring(0, result.length - 2);
      }
    }
    Provider.of<ResultProvider>(context, listen: false).updateResultEqual(result);
    resultController.text = Provider.of<ResultProvider>(context, listen: false).getResult;
  }

  static void resultManagerNormalButton(context, expressionController, resultController) {
    String result;
    try {
      Parser p = Parser();
      Expression exp = p.parse(
        expressionController.text,
      );

      ContextModel cm = ContextModel();
      result = ' = ${exp.evaluate(EvaluationType.REAL, cm)}';
    } catch (e) {
      Parser p = Parser();
      var finalValue = expressionController.text.substring(0, expressionController.text.length - 1);
      Expression exp = p.parse(
        finalValue,
      );

      ContextModel cm = ContextModel();
      result = ' = ${exp.evaluate(EvaluationType.REAL, cm)}';
    }
    // print(result);
    // if (result == " = Infinity") {
    //   print("infiinity");
    // }
    String newResult = result.substring(result.length - 2);

    if (newResult == ".0") {
      result = result.substring(0, result.length - 2);
    }
    Provider.of<ResultProvider>(context, listen: false).updateResultSimple(result);
    resultController.text = Provider.of<ResultProvider>(context, listen: false).getResult;
  }

  static void updateResultEveryTime(context, expressionController, resultController) {
    for (var i = 0; i < numbers.length; i++) {
      if (expressionController.text.length >= 0 && expressionController.text.length != null) {
        if (expressionController.text.endsWith(numbers[i])) {
          //If the answer is infinity

          resultManagerNormalButton(context, expressionController, resultController);
        }
      }
    }
  }
}
