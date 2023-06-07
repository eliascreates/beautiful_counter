import 'package:beautiful_counter/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CounterNumber extends StatelessWidget {
  const CounterNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          context
              .select((CounterCubit counterCubit) => counterCubit.state.counter)
              .toString(),
          softWrap: true,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
