import 'package:counter_mini/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the counter is initialized at <initialValue>
Future<void> theCounterIsInitializedAt(
    WidgetTester tester, dynamic initialValue) async {
  var container = ProviderScope.containerOf(tester.element(find.byType(MyApp)));
}
