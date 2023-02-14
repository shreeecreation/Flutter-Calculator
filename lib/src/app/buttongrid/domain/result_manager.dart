import 'package:math_expressions/math_expressions.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/core/providers/result_provider.dart';

class ResultManager {
  static List numbers = ["9", "8", "7", "6", "5", "4", "3", "2", "1", "0"];
  static void resultManagerEqualButton(context, expressionController, resultController) {
    String result;
    try {
      Parser p = Parser();
      Expression exp = p.parse(
        expressionController.text,
      );

      ContextModel cm = ContextModel();
      result = ' = ${exp.evaluate(EvaluationType.REAL, cm)}';
    } catch (e) {
      result = "Error";
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
      result = "Error";
    }
    Provider.of<ResultProvider>(context, listen: false).updateResultSimple(result);
    resultController.text = Provider.of<ResultProvider>(context, listen: false).getResult;
  }

  static void updateResultEveryTime(context, expressionController, resultController) {
    for (var i = 0; i < numbers.length; i++) {
      if (expressionController.text.length >= 0 && expressionController.text.length != null) {
        if (expressionController.text.endsWith(numbers[i])) {
          resultManagerNormalButton(context, expressionController, resultController);
        }
      }
    }
  }
}
