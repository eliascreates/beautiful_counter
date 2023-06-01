import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';

class AppRoutes {
  static const String home = '/';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: ((_) => const HomeScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Screen not found"),),),
        );
    }
  }
}
