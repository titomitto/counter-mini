import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter.g.dart';

class CounterState {
  final int counter;
  final int incrementValue;
  final int decrementValue;
  final int? maximumLimit;
  final int? minimumLimit;

  CounterState({
    required this.counter,
    this.decrementValue = 1,
    this.incrementValue = 1,
    this.maximumLimit,
    this.minimumLimit,
  });

  CounterState copyWith({
    int? counter,
    int? maximumLimit,
    int? minimumLimit,
    int? incrementValue,
    int? decrementValue,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      maximumLimit: maximumLimit ?? this.maximumLimit,
      minimumLimit: minimumLimit ?? this.minimumLimit,
      incrementValue: incrementValue ?? this.incrementValue,
      decrementValue: decrementValue ?? this.decrementValue,
    );
  }
}

@riverpod
class Counter extends _$Counter {
  @override
  CounterState build() {
    return CounterState(
      counter: 0,
    );
  }

  void setIncrementValue(int incrementValue) {
    state = state.copyWith(
      incrementValue: incrementValue,
    );
  }

  void setDecrementValue(int decrementValue) {
    state = state.copyWith(
      decrementValue: decrementValue,
    );
  }

  void setMaximumLimit(int maximumLimit) {
    state = state.copyWith(
      maximumLimit: maximumLimit,
    );
  }

  void setMinimumLimit(int minimumLimit) {
    state = state.copyWith(
      minimumLimit: minimumLimit,
    );
  }

  void increment() {
    state = state.copyWith(
      counter: state.counter + state.incrementValue,
    );
  }

  void decrement() {
    state = state.copyWith(
      counter: state.counter - state.decrementValue,
    );
  }

  void reset() {
    state = state.copyWith(
      counter: 0,
    );
  }
}
