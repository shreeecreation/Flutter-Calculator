import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  List<Map<String, String>> history = [{}];

  List get historyGetter {
    return history;
  }

  void addHistory(Map<String, String> value) {
    history.add(value);
    notifyListeners();
  }

  void clearHistory() {
    history.clear();
    notifyListeners();
  }
}
