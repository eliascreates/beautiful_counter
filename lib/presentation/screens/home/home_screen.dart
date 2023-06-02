// import 'package:beautiful_counter/core/constants/strings.dart';
import 'package:beautiful_counter/presentation/screens/home/components/slide_stepper.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/background_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const  Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(child: BackgroundAnimation()),
          Positioned(
            bottom: 40,
            child: SlideStepper(),
          )
        ],
      ),
    );
  }
}
