import 'package:core_navigation/module/module.dart';
import 'package:feature_currency_details/currency_details_module.dart';
import 'package:feature_dashboard/dashboard_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';

final List<Module> modules = [
  DashboardModule(),
  CurrencyDetailsModule(),
];

void main() async {
  await dotenv.load(fileName: ".env");

  for (var module in modules) {
    module.initDependencies();
  }

  final List<RouteBase> routes = [];

  for (var module in modules) {
    routes.addAll(module.routes);
  }

  final router = GoRouter(routes: routes);

  runApp(MyApp(
    router: router,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.router,
  });

  final GoRouter router;

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
