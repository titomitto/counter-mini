import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the user sets the minimum limit to <limitValue>
Future<void> theUserSetsTheMinimumLimitTo(
    WidgetTester tester, dynamic limitValue) async {
  await tester.enterText(
    find.byKey(const ValueKey('minimumLimitField')),
    limitValue.toString(),
  );
  await tester.tap(find.byKey(const ValueKey('setMinimumLimitButton')));
}
