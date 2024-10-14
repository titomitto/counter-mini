import 'package:flutter_test/flutter_test.dart';

/// Usage: the counter should still display the value of {'6'}
Future<void> theCounterShouldStillDisplayTheValueOf(
    WidgetTester tester, String param1) async {
  int expectedValue = int.parse(param1);

  expect(find.text(expectedValue.toString()), findsOneWidget);
}
