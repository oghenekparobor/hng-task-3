import 'package:flutter/material.dart';
import 'package:hng_task_3/features/home/presentation/views/detail.dart';
import 'package:hng_task_3/features/home/presentation/views/home.dart';
import 'package:hng_task_3/features/home/presentation/views/splash.dart';

class Routes {
  static const String home = '/home';
  static const String more = '/more';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const Home(),
          settings: settings,
        );
      case more:
        return MaterialPageRoute(
          builder: (_) => const Details(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Splash(),
          settings: settings,
        );
    }
  }
}
