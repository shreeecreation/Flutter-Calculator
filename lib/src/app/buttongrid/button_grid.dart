import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/core/extensions/colors_extension.dart';
import 'package:scientific_calculato/src/core/providers/expression_provider.dart';
import 'package:scientific_calculato/src/core/providers/history_provider.dart';
import 'package:scientific_calculato/src/core/themes/appcolors.dart';
import 'package:scientific_calculato/src/core/themes/appstyles.dart';

import 'domain/result_manager.dart';

class ButtonGrid {
  static List numbers = ["9", "8", "7", "6", "5", "4", "3", "2", "1", ".", "0"];
  static List operators = ["/", "*", "-", "+", "%"];

  static double boxHeight = 80;

  static Widget rowFirst(functionModel) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onDoubleTap: () {
            Provider.of<ExpressionProvider>(functionModel.context, listen: false)
                .resetExpression(functionModel.expressionController, functionModel.resultExpression);

            Provider.of<HistoryProvider>(functionModel.context, listen: false).clearHistory();
          },
          onTap: () {
            Provider.of<ExpressionProvider>(functionModel.context, listen: false)
                .resetExpression(functionModel.expressionController, functionModel.resultExpression);
          },
          child: SizedBox(height: boxHeight, child: Center(child: Text("C", style: AppStyles.text31PxBold.primary))),
        )),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(functionModel.context, listen: false).oneStepBackExpression(functionModel.expressionController);
                    },
                    style: functionModel.elevatedBUttonStyle,
                    child: const Icon(Icons.backspace, color: AppColors.primary)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(functionModel.context, listen: false).updateExpression(
                          operators[4],
                          functionModel.expressionController,
                          functionModel.context,
                          functionModel.resultExpression,
                          functionModel.isEqualbuttonPressed);
                    },
                    style: functionModel.elevatedBUttonStyle,
                    child: Text("%", style: AppStyles.text30PxBold.primary)))),
        Expanded(
            child: SizedBox(
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(functionModel.context, listen: false).updateExpression(
                          operators[0],
                          functionModel.expressionController,
                          functionModel.context,
                          functionModel.resultExpression,
                          functionModel.isEqualbuttonPressed);
                    },
                    style: functionModel.elevatedBUttonStyle,
                    child: Text("/", style: AppStyles.text30PxBold.primary))))
      ],
    );
  }

  static Row rowSecond(functionmodel) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[2], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("7", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[1], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("8", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[0], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("9", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(functionmodel.context, listen: false).updateExpression(
                          operators[1],
                          functionmodel.expressionController,
                          functionmodel.context,
                          functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("X", style: AppStyles.text30PxBold.primary))))
      ],
    );
  }

  static Row rowThird(functionmodel) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[5], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("4", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[4], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("5", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[3], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("6", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(functionmodel.context, listen: false).updateExpression(
                          operators[2],
                          functionmodel.expressionController,
                          functionmodel.context,
                          functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("-", style: AppStyles.text30PxBold.primary))))
      ],
    );
  }

  static Row rowFourth(functionmodel) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[8], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("1", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[7], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("2", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionmodel.context, numbers[6], functionmodel.expressionController, functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("3", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(functionmodel.context, listen: false).updateExpression(
                          operators[3],
                          functionmodel.expressionController,
                          functionmodel.context,
                          functionmodel.resultExpression,
                          functionmodel.isEqualbuttonPressed);
                    },
                    style: functionmodel.elevatedBUttonStyle,
                    child: Text("+", style: AppStyles.text31PxBold.primary))))
      ],
    );
  }

  static Row rowFifth(functionModel) {
    return Row(
      children: [
        Expanded(
            child: SizedBox(
                height: boxHeight, child: ElevatedButton(onPressed: () {}, style: functionModel.elevatedBUttonStyle, child: const Icon(Icons.copy)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<ExpressionProvider>(functionModel.context, listen: false).updateExpression("0", functionModel.expressionController,
                          functionModel.context, functionModel.resultExpression, functionModel.isEqualbuttonPressed);
                    },
                    style: functionModel.elevatedBUttonStyle,
                    child: Text("0", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      numberPressed(functionModel.context, numbers[9], functionModel.expressionController, functionModel.resultExpression,
                          functionModel.isEqualbuttonPressed);
                    },
                    style: functionModel.elevatedBUttonStyle,
                    child: Text(".", style: AppStyles.text31PxBold)))),
        Expanded(
            child: SizedBox(
                height: boxHeight,
                child: ElevatedButton(
                    onPressed: () {
                      ResultManager.resultManagerEqualButton(
                          functionModel.context, functionModel.expressionController, functionModel.resultExpression);
                    },
                    style: functionModel.elevatedBUttonStyle,
                    child: ElevatedButton(
                        onPressed: () {
                          ResultManager.resultManagerEqualButton(
                              functionModel.context, functionModel.expressionController, functionModel.resultExpression);
                        },
                        style: functionModel.elevatedBUttonStyle,
                        child: const Icon(Icons.dehaze)))))
      ],
    );
  }
}

void numberPressed(context, index, expressionController, resultExpression, isEqualbuttonPressed) {
  Provider.of<ExpressionProvider>(context, listen: false)
      .updateExpression(index, expressionController, context, resultExpression, isEqualbuttonPressed);
  ResultManager.updateResultEveryTime(context, expressionController, resultExpression);
}
