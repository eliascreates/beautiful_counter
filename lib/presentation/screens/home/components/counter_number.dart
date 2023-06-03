import 'package:beautiful_counter/core/themes/app_theme.dart';
import 'package:beautiful_counter/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterNumber extends StatelessWidget {
  const CounterNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context
          .select((CounterCubit counterCubit) => counterCubit.state.counter)
          .toString(),
      textAlign: TextAlign.center,
      style: GoogleFonts.kumarOne(
          color: Theme.of(context).supportColor,
          textStyle: Theme.of(context).textTheme.displayLarge),
    );
  }
}
