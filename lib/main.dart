import 'package:flutter/material.dart';
import 'package:flutter_modularization/di/injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modularization/router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  configureDependencies();
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Modularization',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
