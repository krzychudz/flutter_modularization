import 'package:core_navigation/module/module.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart' hide Module;

@Singleton()
class AppNavigator {
  final List<RouteBase> routes = [];

  void addModule(Module module) {
    routes.addAll(module.routes);
  }
}
