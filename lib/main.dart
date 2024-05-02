import 'package:flutter/material.dart';
import 'package:weather_pulse/core/di/injection.dart';

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
    return const MaterialApp();
  }
}

// Flutter Version - 3.16.5