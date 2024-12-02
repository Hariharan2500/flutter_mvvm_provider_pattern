import 'package:flutter/foundation.dart';
import 'counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel counterModel = CounterModel();

  int get counter => counterModel.counter;

  void increment() {
    counterModel.counter++;
    notifyListeners(); // Notify the view about the updated state
  }
}
