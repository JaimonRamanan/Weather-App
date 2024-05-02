import 'package:flutter/material.dart';
import 'package:weather_pulse/core/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pulse/core/di/injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_pulse/application/weather/weather_bloc.dart';

import 'core/route/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// Init dependancy injection
  configureDependancies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WeatherBloc>(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            onGenerateRoute: AppRouter.generateRoute,
          );
        },
      ),
    );
  }
}

// Flutter Version - 3.16.5