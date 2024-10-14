import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the user decrements the counter <times> times
Future<void> theUserDecrementsTheCounterTimes(
    WidgetTester tester, dynamic times) async {
  for (var i = 0; i < times; i++) {
    await tester.tap(find.byKey(const ValueKey('decrementButton')));
    await tester.pumpAndSettle();
  }
}
