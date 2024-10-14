import 'package:flutter_test/flutter_test.dart';

/// Usage: the user should be informed that the minimum limit has been reached
Future<void> theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(
    WidgetTester tester) async {
  var text = find.text("Minimum limit reached");
  expect(text, findsOneWidget);
}
