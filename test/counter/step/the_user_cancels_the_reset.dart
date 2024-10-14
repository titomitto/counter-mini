import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the user cancels the reset
Future<void> theUserCancelsTheReset(WidgetTester tester) async {
  var cancelButton = find.byKey(const ValueKey('cancelButton'));
  await tester.tap(cancelButton);
  await tester.pumpAndSettle();
}
