// import 'package:beautiful_counter/core/constants/strings.dart';
import 'package:beautiful_counter/presentation/screens/home/components/slide_stepper.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'components/background_animation.dart';
import 'components/counter_number.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned.fill(child: BackgroundAnimation()),
          Positioned(
            top: 10.h,
            child: const CounterNumber(),
          ),
          Positioned(
            bottom: 6.h,
            child: const SlideStepper(),
          )
        ],
      ),
    );
  }
}
