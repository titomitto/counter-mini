import 'package:flutter_test/flutter_test.dart';

/// Usage: the counter should display the value of <expectedValue>
Future<void> theCounterShouldDisplayTheValueOf(
    WidgetTester tester, dynamic expectedValue) async {
  expect(find.text(expectedValue.toString()), findsOneWidget);
}
