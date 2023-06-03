import 'package:beautiful_counter/logic/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    test(
        'Given CounterCubit when initialized, then the state is CounterState(counter: 0)',
        () {
      expect(counterCubit.state, const CounterState(counter: 0));
    });

    test(
        'Given CounterCubit when increment function is called then the state is CounterState(counter: 1)',
        () {
      counterCubit.increment();

      expect(counterCubit.state, const CounterState(counter: 1));
    });

    test(
        'Given CounterCubit when decrement function is called then the state is CounterState(counter: -1)',
        () {
      counterCubit.decrement();

      expect(counterCubit.state, const CounterState(counter: -1));
    });

    tearDown(() {
      counterCubit.close();
    });
  });
}
