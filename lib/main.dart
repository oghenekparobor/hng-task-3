import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_task_3/config/route/route.dart';
import 'package:hng_task_3/config/theme/theme.dart';
import 'package:hng_task_3/features/home/presentation/views/splash.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

import 'core/di/injection_container.dart';
import 'features/home/presentation/notifier/home_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await dotenv.load();

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
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: sl<HomeService>()),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 800),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp(
            title: 'HNG Task 3',
            theme: theme(context),
            darkTheme: darkTheme(context),
            navigatorKey: navKey,
            onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
            home: const Splash(),
          ),
        ),
      ),
    );
  }
}
