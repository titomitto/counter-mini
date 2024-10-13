import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int? _maximumLimit;
  int? _minimumLimit;
  int? _incrementValue;

  void _incrementCounter() {
    if (_maximumLimit != null && _counter >= _maximumLimit!) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Counter has reached the maximum limit'),
        ),
      );
      return;
    }
    if (_incrementValue != null &&
        _maximumLimit != null &&
        _counter + _incrementValue! > _maximumLimit!) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('The the maximum limit has been reached'),
        ),
      );
      return;
    }
    setState(() {
      _counter = _counter + (_incrementValue ?? 1);
    });
  }

  void setMaximumLimit(int maximumLimit) {
    _maximumLimit = maximumLimit;
  }

  void setMinimumLimit(int minimumLimit) {
    _minimumLimit = minimumLimit;
  }

  void setIncrementValue(int incrementValue) {
    _incrementValue = incrementValue;
  }

  void _decrementCounter() {
    if (_minimumLimit != null && _counter <= _minimumLimit!) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Counter has reached the minimum limit'),
        ),
      );
      return;
    }
    setState(() {
      _counter = _counter - (_incrementValue ?? 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Button to decrement the counter
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              key: const Key('decrement'),
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              key: const Key('increment'),
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
