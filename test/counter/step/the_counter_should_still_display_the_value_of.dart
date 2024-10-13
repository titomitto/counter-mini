import 'package:flutter_test/flutter_test.dart';

/// Usage: the counter should still display the value of {'6'}
Future<void> theCounterShouldStillDisplayTheValueOf(
    WidgetTester tester, String param1) async {
  expect(find.text(param1), findsOneWidget);
}
