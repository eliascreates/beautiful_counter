import 'package:beautiful_counter/logic/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockStorage extends Mock implements Storage {}

void main() async {

  group('CounterCubit', () {
    late Storage storage;
    late CounterCubit counterCubit;

    setUp(() {
      storage = MockStorage();
      when(
        () => storage.write(
          any(),
          any<dynamic>(),
        ),
      ).thenAnswer((_) async => {});
      HydratedBloc.storage = storage;
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
