import 'package:counter_mini/main.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the increment value is set to <incrementValue>
Future<void> theIncrementValueIsSetTo(
    WidgetTester tester, dynamic incrementValue) async {
  var state = tester.state<MyHomePageState>(find.byType(MyHomePage));

  state.setIncrementValue(int.parse("$incrementValue"));
}
