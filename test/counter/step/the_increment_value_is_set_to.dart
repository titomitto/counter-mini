import 'package:counter_mini/counter/counter.dart';
import 'package:counter_mini/counter/ui/notifiers/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the increment value is set to <incrementValue>
Future<void> theIncrementValueIsSetTo(
    WidgetTester tester, dynamic incrementValue) async {
  var element = tester.element(find.byType(CounterScreen));
  final container = ProviderScope.containerOf(element);

  container
      .read(counterProvider.notifier)
      .setIncrementValue(int.parse("$incrementValue"));
}
