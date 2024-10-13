import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the user increments the counter <times> times
Future<void> theUserIncrementsTheCounterTimes(
    WidgetTester tester, dynamic times) async {
  for (var i = 0; i < times; i++) {
    await tester.tap(find.byKey(const ValueKey('increment')));
    await tester.pumpAndSettle();
  }
}
