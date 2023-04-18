// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../network/api_client.dart' as _i5;
import '../../network/services/currencies/currencies_service.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiClientModule = _$ApiClientModule();
    gh.singleton<_i3.ChopperClient>(apiClientModule.chopperClient);
    gh.singleton<_i4.CurrenciesService>(
        _i4.CurrenciesService.create(gh<_i3.ChopperClient>()));
    return this;
  }
}

class _$ApiClientModule extends _i5.ApiClientModule {}