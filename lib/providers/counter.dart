// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

// Creates a class that can be used  to get information about the counter
// though the CounterProvider.of(context)
class CounterState {
  int _value = 0;

  void increment() {
    _value++;
  }

  void decrement() {
    _value--;
  }

  int get value => _value;

  bool diff(CounterState old) {
    return old.value != _value;
  }
}

class CounterProvider extends InheritedWidget {
  final CounterState state = CounterState();

  CounterProvider({required Widget child}) : super(child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return oldWidget.state.diff(state);
  }
}
