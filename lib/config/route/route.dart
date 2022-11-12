import 'package:flutter/material.dart';
import 'package:hng_task_3/features/home/presentation/views/splash.dart';

class Routes {
  static const String home = '/';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      // case customerJob:
      //   return MaterialPageRoute(
      //     builder: (_) => const CustomerJob(),
      //     settings: settings,
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => const Splash(),
          settings: settings,
        );
    }
  }
}
