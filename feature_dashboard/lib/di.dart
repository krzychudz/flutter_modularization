import 'package:core_data/di.module.dart';
import 'package:core_navigation/di.module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'featureDashboardInit',
  preferRelativeImports: true,
  asExtension: true,
  externalPackageModulesBefore: [
    ExternalModule(CoreDataPackageModule),
    ExternalModule(CoreNavigationPackageModule)
  ],
)
void configureDependencies() => getIt.featureDashboardInit();
