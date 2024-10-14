import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the counter is displaying {'6'}
Future<void> theCounterIsDisplaying(WidgetTester tester, String param1) async {
  int expectedValue = int.parse(param1);

  for (var i = 0; i < expectedValue; i++) {
    await tester.tap(find.byKey(const ValueKey('incrementButton')));
    await tester.pumpAndSettle();
  }
}
