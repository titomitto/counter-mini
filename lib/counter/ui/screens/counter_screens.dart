import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/notifiers.dart';

class CounterScreen extends ConsumerStatefulWidget {
  static const String routePath = '/counter';

  const CounterScreen({super.key});

  @override
  ConsumerState<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends ConsumerState<CounterScreen> {
  int get _counter => ref.read(counterProvider).counter;
  int? get maximumLimit => ref.read(counterProvider).maximumLimit;
  int? get minimumLimit => ref.read(counterProvider).minimumLimit;
  int get incrementValue => ref.read(counterProvider).incrementValue;
  int get decrementValue => ref.read(counterProvider).decrementValue;

  late TextEditingController minimumLimitController;
  late TextEditingController maximumLimitController;
  late TextEditingController incrementValueController;
  late TextEditingController decrementValueController;

  final GlobalKey<FormState> _decrementValueFormKey = GlobalKey<FormState>();

  void _incrementCounter() {
    if (maximumLimit != null && _counter >= maximumLimit!) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Counter has reached the maximum limit'),
        ),
      );
      return;
    }
    if (maximumLimit != null && _counter + incrementValue > maximumLimit!) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('The the maximum limit has been reached'),
        ),
      );
      return;
    }

    ref.read(counterProvider.notifier).increment();
  }

  void _decrementCounter() {
    if (minimumLimit != null && _counter <= minimumLimit!) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Maximum limit reached'),
        ),
      );
      return;
    }

    if (minimumLimit != null && _counter - decrementValue < minimumLimit!) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Minimum limit reached'),
        ),
      );
      return;
    }

    ref.read(counterProvider.notifier).decrement();
  }

  Future<void> _resetCounter() async {
    // Show confirmation dialog
    bool confirm = await showDialog<bool>(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Reset Counter'),
              content:
                  const Text('Are you sure you want to reset the counter?'),
              actions: <Widget>[
                TextButton(
                  key: const Key('cancelButton'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  key: const Key('confirmButton'),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('Reset'),
                ),
              ],
            );
          },
        ) ??
        false;

    if (confirm) {
      ref.read(counterProvider.notifier).reset();
    }
  }

  @override
  void initState() {
    super.initState();
    minimumLimitController = TextEditingController(
      text: minimumLimit?.toString(),
    );
    maximumLimitController = TextEditingController(
      text: maximumLimit?.toString(),
    );
    incrementValueController = TextEditingController(
      text: incrementValue.toString(),
    );
    decrementValueController = TextEditingController(
      text: decrementValue.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              key: Key('counterValue'),
              '${ref.watch(counterProvider.select((CounterState state) => state.counter))}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            OutlinedButton(
              onPressed: _resetCounter,
              key: const Key('resetButton'),
              child: const Text('Reset'),
            ),
            // Button to decrement the counter
            Row(
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'decrementButton',
                  key: const Key('decrementButton'),
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'incrementButton',
                  key: const Key('incrementButton'),
                  child: const Icon(Icons.add),
                )
              ],
            ),
            Column(
              children: [
                Text('Increment Value: ${ref.watch(
                  counterProvider.select(
                    (CounterState state) => state.incrementValue,
                  ),
                )}'),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: incrementValueController,
                        key: const Key('incrementField'),
                      ),
                    ),
                    ElevatedButton(
                      key: Key('setIncrementButton'),
                      onPressed: () {
                        ref.read(counterProvider.notifier).setIncrementValue(
                              int.tryParse(incrementValueController.text) ?? 0,
                            );
                      },
                      child: const Text('Set Increment'),
                    )
                  ],
                )
              ],
            ),
            Form(
              key: _decrementValueFormKey,
              child: Column(
                children: [
                  Text('Decrement Value: ${ref.watch(
                    counterProvider.select(
                      (CounterState state) => state.decrementValue,
                    ),
                  )}'),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: decrementValueController,
                          key: const Key('decrementField'),
                        ),
                      ),
                      ElevatedButton(
                        key: Key('setDecrementButton'),
                        onPressed: () {
                          if (_decrementValueFormKey.currentState!.validate()) {
                            ref
                                .read(counterProvider.notifier)
                                .setDecrementValue(
                                  int.parse(decrementValueController.text),
                                );
                          }
                        },
                        child: const Text('Set Decrement'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text('Minimum Limit: ${ref.watch(
                      counterProvider
                          .select((CounterState state) => state.minimumLimit),
                    ) ?? "Not Set"}'),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: minimumLimitController,
                        key: const Key('minimumLimitField'),
                      ),
                    ),
                    ElevatedButton(
                      key: Key('setMinimumLimitButton'),
                      onPressed: () {
                        ref.read(counterProvider.notifier).setMinimumLimit(
                              int.parse(minimumLimitController.text),
                            );
                      },
                      child: const Text('Set Limit'),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text('Maximum Limit: ${ref.watch(
                      counterProvider.select(
                        (CounterState state) => state.maximumLimit,
                      ),
                    ) ?? "Not Set"}'),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: maximumLimitController,
                        key: const Key('maximumLimitField'),
                      ),
                    ),
                    ElevatedButton(
                      key: Key('setMaximumLimitButton'),
                      onPressed: () {
                        ref.read(counterProvider.notifier).setMinimumLimit(
                              int.parse(minimumLimitController.text),
                            );
                      },
                      child: const Text('Set Limit'),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
