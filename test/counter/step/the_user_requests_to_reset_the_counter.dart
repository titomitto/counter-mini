import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the user requests to reset the counter
Future<void> theUserRequestsToResetTheCounter(WidgetTester tester) async {
  var resetButton = find.byKey(const ValueKey('resetButton'));
  await tester.tap(resetButton);
  await tester.pumpAndSettle();
}
