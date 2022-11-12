import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hng_task_3/features/home/presentation/views/splash.dart';
import 'package:oktoast/oktoast.dart';

import 'core/di/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await configureDependencies();
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      animationCurve: Curves.bounceIn,
      animationDuration: const Duration(milliseconds: 500),
      position: ToastPosition.bottom,
      duration: const Duration(milliseconds: 1000),
      child: MaterialApp(
        title: 'HNG Task 3',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: navKey,
        home: const Splash(),
      ),
    );
  }
}
