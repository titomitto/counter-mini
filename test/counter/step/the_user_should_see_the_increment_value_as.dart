import 'package:flutter_test/flutter_test.dart';

/// Usage: the user should see the increment value as <incrementValue>
Future<void> theUserShouldSeeTheIncrementValueAs(
    WidgetTester tester, dynamic incrementValue) async {
  expect(
    find.text('Increment Value: ${incrementValue.toString()}'),
    findsOneWidget,
  );
}
