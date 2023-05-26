import 'package:core_module/module.dart';
import 'package:feature_currency_details/currency_details_module.dart';
import 'package:feature_dashboard/dashboard_module.dart';
import 'package:go_router/go_router.dart';

final List<Module> modules = [
  DashboardModule(),
  CurrencyDetailsModule(),
];

void initializeModuleDependencies(List<Module> modules) {
  for (var module in modules) {
    module.initDependencies();
  }
}

GoRouter initializeRouter(List<Module> modules) {
  final routes = modules
      .map((module) => module.routes)
      .expand((routes) => routes)
      .toList();

  return GoRouter(routes: routes);
}
