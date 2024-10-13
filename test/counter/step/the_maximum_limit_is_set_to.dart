import 'package:counter_mini/main.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the maximum limit is set to <limitValue>
Future<void> theMaximumLimitIsSetTo(
    WidgetTester tester, dynamic limitValue) async {
  var state = tester.state<MyHomePageState>(find.byType(MyHomePage));

  state.setMaximumLimit(int.parse("$limitValue"));
}
