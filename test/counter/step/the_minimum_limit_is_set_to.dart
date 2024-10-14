import 'package:counter_mini/counter/counter.dart';
import 'package:counter_mini/counter/ui/notifiers/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the minimum limit is set to <limitValue>
Future<void> theMinimumLimitIsSetTo(
    WidgetTester tester, dynamic limitValue) async {
  var element = tester.element(find.byType(CounterScreen));
  final container = ProviderScope.containerOf(element);

  container
      .read(counterProvider.notifier)
      .setMinimumLimit(int.parse("$limitValue"));
}
