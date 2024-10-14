import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the counter should display the value of <expectedValue>
Future<void> theCounterShouldDisplayTheValueOf(
    WidgetTester tester, dynamic expectedValue) async {
  var counter = tester.widget<Text>(find.byKey(const ValueKey('counterValue')));
  expect(counter.data, expectedValue.toString());
}
