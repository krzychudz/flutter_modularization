import 'package:go_router/go_router.dart';

abstract interface class Module {
  List<RouteBase> get routes;
  void Function() get initDependencies;
}
