//@GeneratedMicroModule;CoreDataPackageModule;package:core_data/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:chopper/chopper.dart' as _i3;
import 'package:core_data/network/api_client.dart' as _i7;
import 'package:core_data/repositories/currency_repository/currency_repository.dart'
    as _i6;
import 'package:core_data/repositories/currency_repository/currency_repository_interface.dart'
    as _i5;
import 'package:core_data/services/currencies/currencies_service.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;

class CoreDataPackageModule extends _i1.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final apiClientModule = _$ApiClientModule();
    gh.singleton<_i3.ChopperClient>(apiClientModule.chopperClient);
    gh.singleton<_i4.CurrencyService>(
        _i4.CurrencyService.create(gh<_i3.ChopperClient>()));
    gh.singleton<_i5.CurrencyRepositoryInterface>(
        _i6.CurrencyRepository(gh<_i4.CurrencyService>()));
  }
}

class _$ApiClientModule extends _i7.ApiClientModule {}
