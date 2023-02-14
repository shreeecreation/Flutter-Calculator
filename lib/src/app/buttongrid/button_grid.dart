import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/core/extensions/colors_extension.dart';
import 'package:scientific_calculato/src/core/providers/expression_provider.dart';
import 'package:scientific_calculato/src/core/themes/appcolors.dart';
import 'package:scientific_calculato/src/core/themes/appstyles.dart';

import 'domain/result_manager.dart';

class ButtonGrid {
  static List numbers = ["9", "8", "7", "6", "5", "4", "3", "2", "1", ".", "0"];
  static List operators = ["/", "*", "-", "+", "%"];

  static Widget rowFirst(ButtonStyle elevatedBUttonStyle, context, expressionController, resultExpression) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false).resetExpression(expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("C", style: AppStyles.text31PxBold.primary)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false).oneStepBackExpression(expressionController);
                    },
                    style: elevatedBUttonStyle,
                    child: const Icon(Icons.backspace, color: AppColors.primary)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false)
                          .updateExpression(operators[4], expressionController, context, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("%", style: AppStyles.text30PxBold.primary)))),
        Expanded(
            child: SizedBox(
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false)
                          .updateExpression(operators[0], expressionController, context, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("/", style: AppStyles.text30PxBold.primary))))
      ],
    );
  }

  static Row rowSecond(ButtonStyle elevatedBUttonStyle, context, expressionController, resultExpression) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[2], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("7", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[1], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("8", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[0], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("9", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false)
                          .updateExpression(operators[1], expressionController, context, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("X", style: AppStyles.text30PxBold.primary))))
      ],
    );
  }

  static Row rowThird(ButtonStyle elevatedBUttonStyle, context, expressionController, resultExpression) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[5], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("4", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[4], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("5", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[3], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("6", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false)
                          .updateExpression(operators[2], expressionController, context, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("-", style: AppStyles.text30PxBold.primary))))
      ],
    );
  }

  static Row rowFourth(ButtonStyle elevatedBUttonStyle, context, expressionController, resultExpression) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[8], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("1", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[7], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("2", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[6], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("3", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false)
                          .updateExpression(operators[3], expressionController, context, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("+", style: AppStyles.text31PxBold.primary))))
      ],
    );
  }

  static Row rowFifth(ButtonStyle elevatedBUttonStyle, context, expressionController, resultExpression) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("1", style: AppStyles.text30PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(context, listen: false).updateExpression("0", expressionController, context, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text("0", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(context, numbers[10], expressionController, resultExpression);
                    },
                    style: elevatedBUttonStyle,
                    child: Text(".", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: 80,
                child: ElevatedButton(
                    onPressed: () {},
                    style: elevatedBUttonStyle,
                    child: ElevatedButton(
                        onPressed: () {
                          ResultManager.resultManagerEqualButton(context, expressionController, resultExpression);
                        },
                        style: elevatedBUttonStyle,
                        child: const Icon(Icons.dehaze)))))
      ],
    );
  }
}

void numberPressed(context, index, expressionController, resultExpression) {
  Provider.of<ExpressionProvider>(context, listen: false).updateExpression(index, expressionController, context, resultExpression);
  ResultManager.updateResultEveryTime(context, expressionController, resultExpression);
}
