import 'package:core_module/module.dart';
import 'package:feature_dashboard/dashboard_screen/dashboard_screen.dart';
import 'package:feature_dashboard/di.dart';
import 'package:go_router/src/route.dart';

class DashboardModule implements Module {
  @override
  List<RouteBase> get routes => [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashboardScreen(),
        ),
      ];

  @override
  void Function() get initDependencies => configureDependencies;
}
