import 'package:flutter_test/flutter_test.dart';

/// Usage: the user should be informed of the invalid increment value
Future<void> theUserShouldBeInformedOfTheInvalidIncrementValue(
    WidgetTester tester) async {
  var text = find.text("Invalid increment value");
  expect(text, findsOneWidget);
}
