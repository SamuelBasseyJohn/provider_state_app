import 'package:flutter/material.dart';
import 'package:state_management/Model/counter_model.dart';

class CounterProvider extends ChangeNotifier{
  Counter counter = Counter(value: 0);

  void increment(){
    counter.increment();
    notifyListeners();
  }
  void decrement(){
    counter.decrement();
    notifyListeners();
  }
}