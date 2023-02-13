import 'package:flutter/material.dart';
import 'package:scientific_calculato/src/core/themes/appstyles.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var elevatedButtonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0);
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("0", style: AppStyles.text24Px),
              const SizedBox(width: 40),
            ],
          ),
          const Divider(),
          //First Row "C" "Wrong" "Percent" "Divide"
          rowFirst(elevatedButtonStyle),
          //First Row "7" "8" "9" "multiply"
          rowSecond(elevatedButtonStyle),
          //First Row "4" "5" "6" "minus"
          rowThird(elevatedButtonStyle),
          //First Row "1" "2" "3" "Divide"
          rowFourth(elevatedButtonStyle),
          //First Row "" "0" "." "equals"
          rowFifth(elevatedButtonStyle),
        ],
      ),
    ));
  }
}

Row rowFirst(ButtonStyle elevatedBUttonStyle) {
  return Row(
    children: [
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("C", style: AppStyles.text18PxMedium)))),
      Expanded(child: SizedBox(height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: const Icon(Icons.backspace)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("%", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("/", style: AppStyles.text18PxMedium))))
    ],
  );
}

Row rowSecond(ButtonStyle elevatedBUttonStyle) {
  return Row(
    children: [
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("7", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("8", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("9", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("X", style: AppStyles.text18PxMedium))))
    ],
  );
}

Row rowThird(ButtonStyle elevatedBUttonStyle) {
  return Row(
    children: [
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("4", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("5", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("6", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("-", style: AppStyles.text18PxMedium))))
    ],
  );
}

Row rowFourth(ButtonStyle elevatedBUttonStyle) {
  return Row(
    children: [
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("1", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("2", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("3", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("+", style: AppStyles.text18PxMedium))))
    ],
  );
}

Row rowFifth(ButtonStyle elevatedBUttonStyle) {
  return Row(
    children: [
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("1", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text("0", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80, child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: Text(".", style: AppStyles.text18PxMedium)))),
      Expanded(
          child: SizedBox(
              height: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: elevatedBUttonStyle,
                  child: ElevatedButton(onPressed: () {}, style: elevatedBUttonStyle, child: const Icon(Icons.dehaze)))))
    ],
  );
}
