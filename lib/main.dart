import 'package:flutter/material.dart';
import 'package:mobile_app/ui/views/splash_screen.dart';

void main() {
  runApp(const CareerHiveApp());
}

class CareerHiveApp extends StatelessWidget {
  const CareerHiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CareerHive',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
    );
  }
}
