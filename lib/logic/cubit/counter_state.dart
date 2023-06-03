part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  Map<String, dynamic> toMap() => {'counter': counter};

  factory CounterState.fromMap(Map<String, dynamic> map) {
    if (map.isNotEmpty) {
      return CounterState(counter: map['counter']);
    }
    return const CounterState(counter: 0);
  }

  @override
  List<Object?> get props => [counter];
}
