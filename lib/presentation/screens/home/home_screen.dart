// import 'package:beautiful_counter/core/constants/strings.dart';
import 'dart:ui';

import 'package:beautiful_counter/core/constants/strings.dart';
import 'package:beautiful_counter/core/themes/app_theme.dart';
import 'package:beautiful_counter/presentation/screens/home/components/slide_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/background_animation.dart';

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
            top: 80,
            child: Text("109",
                textAlign: TextAlign.center,
                style: GoogleFonts.kumarOne(
                    color: Theme.of(context).supportColor,
                    textStyle: Theme.of(context).textTheme.displayLarge)),
          ),
          const Positioned(
            bottom: 40,
            child: SlideStepper(),
          )
        ],
      ),
    );
  }
}
