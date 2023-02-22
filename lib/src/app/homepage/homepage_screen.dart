import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/app/buttongrid/button_grid.dart';
import 'package:scientific_calculato/src/core/extensions/colors_extension.dart';
import 'package:scientific_calculato/src/core/providers/history_provider.dart';
import 'package:scientific_calculato/src/core/providers/result_provider.dart';
import 'package:scientific_calculato/src/core/themes/appcolors.dart';
import 'package:scientific_calculato/src/core/themes/appstyles.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({super.key});

  static final TextEditingController result = TextEditingController(text: "0");
  final TextEditingController expression = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var elevatedButtonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0);
    var historyList = Provider.of<HistoryProvider>(context, listen: true).historyGetter;
    var isEqualButtonPressed = Provider.of<ResultProvider>(context, listen: true).isEqualPressed;

    return Scaffold(
        backgroundColor: AppColors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: historyList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(historyList[index]["exp"] ?? "", style: AppStyles.text18Px.textGrey),
                          Text(historyList[index]["result"] ?? "", style: AppStyles.text18Px.textGrey),
                          const SizedBox(height: 25),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextFormField(
                        readOnly: true,
                        maxLength: 40,
                        maxLines: 2,
                        decoration: const InputDecoration(border: InputBorder.none, counterText: ""),
                        textAlign: TextAlign.right,
                        style: Provider.of<ResultProvider>(context, listen: true).getExpressionFont,
                        controller: expression),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: MediaQuery.of(context).size.width - 30,
                    child: TextFormField(
                        readOnly: true,
                        decoration: const InputDecoration(border: InputBorder.none),
                        textAlign: TextAlign.right,
                        style: Provider.of<ResultProvider>(context, listen: true).getResultFont,
                        controller: result),
                  )
                ],
              ),
              const Divider(height: 5, thickness: 0.5),
              //First Row "C" "Wrong" "Percent" "Divide"
              ButtonGrid.rowFirst(elevatedButtonStyle, context, expression, result, isEqualButtonPressed),
              const Divider(height: 5, thickness: 0.5),

              //First Row "7" "8" "9" "multiply"
              ButtonGrid.rowSecond(elevatedButtonStyle, context, expression, result, isEqualButtonPressed),
              const Divider(height: 5, thickness: 0.5),

              //First Row "4" "5" "6" "minus"
              ButtonGrid.rowThird(elevatedButtonStyle, context, expression, result, isEqualButtonPressed),
              const Divider(height: 5, thickness: 0.5),

              //First Row "1" "2" "3" "Divide"
              ButtonGrid.rowFourth(elevatedButtonStyle, context, expression, result, isEqualButtonPressed),
              const Divider(height: 5, thickness: 0.5),

              //First Row "" "0" "." "equals"
              ButtonGrid.rowFifth(elevatedButtonStyle, context, expression, result, isEqualButtonPressed),
              const Divider(height: 5, thickness: 0.5),
            ],
          ),
        ));
  }
}
