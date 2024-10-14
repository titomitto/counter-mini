import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the user sets the increment value to <incrementValue>
Future<void> theUserSetsTheIncrementValueTo(
    WidgetTester tester, dynamic incrementValue) async {
  var incrementField = find.byKey(const ValueKey('incrementField'));
  await tester.enterText(incrementField, incrementValue.toString());
  var setIncrementButton = find.byKey(const ValueKey('setIncrementButton'));
  await tester.tap(setIncrementButton);
  await tester.pumpAndSettle();
}
