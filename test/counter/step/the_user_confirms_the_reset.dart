import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the user confirms the reset
Future<void> theUserConfirmsTheReset(WidgetTester tester) async {
  var confirmButton = find.byKey(const ValueKey('confirmButton'));
  await tester.tap(confirmButton);
  await tester.pumpAndSettle();
}
