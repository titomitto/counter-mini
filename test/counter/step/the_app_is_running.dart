import 'package:counter_mini/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(
    ProviderScope(
      child: CounterApp(),
    ),
  );
}
