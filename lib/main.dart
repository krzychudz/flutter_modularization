import 'package:flutter/material.dart';
import 'package:flutter_modularization/di/injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modularization/feature-dashboard/dashboard_screen/dashboard_screen.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
    );
  }
}
