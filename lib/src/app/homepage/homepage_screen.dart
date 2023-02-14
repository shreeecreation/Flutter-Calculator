import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/app/buttongrid/button_grid.dart';
import 'package:scientific_calculato/src/core/providers/result_provider.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({super.key});

  static final TextEditingController result = TextEditingController(text: "0");
  final TextEditingController expression = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var elevatedButtonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0);
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                child: TextFormField(
                  readOnly: true,
                  maxLength: 30,
                  decoration: const InputDecoration(border: InputBorder.none, counterText: ""),
                  textAlign: TextAlign.right,
                  style: Provider.of<ResultProvider>(context, listen: true).getExpressionFont,
                  controller: expression,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width - 30,
                child: TextFormField(
                  readOnly: true,
                  decoration: const InputDecoration(border: InputBorder.none),
                  textAlign: TextAlign.right,
                  style: Provider.of<ResultProvider>(context, listen: true).getResultFont,
                  controller: result,
                ),
              )
            ],
          ),
          const Divider(),
          //First Row "C" "Wrong" "Percent" "Divide"
          ButtonGrid.rowFirst(elevatedButtonStyle, context, expression, result),
          //First Row "7" "8" "9" "multiply"
          ButtonGrid.rowSecond(elevatedButtonStyle, context, expression, result),
          //First Row "4" "5" "6" "minus"
          ButtonGrid.rowThird(elevatedButtonStyle, context, expression, result),
          //First Row "1" "2" "3" "Divide"
          ButtonGrid.rowFourth(elevatedButtonStyle, context, expression, result),
          //First Row "" "0" "." "equals"
          ButtonGrid.rowFifth(elevatedButtonStyle, context, expression, result),
        ],
      ),
    ));
  }
}
