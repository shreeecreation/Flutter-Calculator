import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calculato/src/core/providers/expression_provider.dart';
import 'package:scientific_calculato/src/core/providers/history_provider.dart';

import 'src/app/homepage/homepage_screen.dart';
import 'src/core/providers/result_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ((context) {
            return ExpressionProvider();
          })),
          ChangeNotifierProvider(create: ((context) {
            return ResultProvider();
          })),
          ChangeNotifierProvider(create: ((context) {
            return HistoryProvider();
          }))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
          home: HomepageScreen(),
        ));
  }
}
