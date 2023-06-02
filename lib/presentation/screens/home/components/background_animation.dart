import 'package:beautiful_counter/core/constants/strings.dart';
import 'package:beautiful_counter/logic/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';


class BackgroundAnimation extends StatelessWidget {
  const BackgroundAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    var theme =
        context.select((ThemeCubit themeCubit) => themeCubit.state.themeMode);
    return Center(
      child: RiveAnimation.asset(
        theme == ThemeMode.light
            ? Strings.lightPlanetBackground
            : Strings.darkPlanetBackground,
        fit: BoxFit.cover,
        placeHolder: const CircularProgressIndicator(),
      ),
    );
  }
}
