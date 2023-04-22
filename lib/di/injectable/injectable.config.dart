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

import '../../core-data/repositories/currency_repository/currency_repository.dart'
    as _i6;
import '../../core-data/repositories/currency_repository/currency_repository_interface.dart'
    as _i5;
import '../../feature-currency-details/currency_details_screen/bloc/currency_details_screen_cubit.dart'
    as _i8;
import '../../feature-dashboard/dashboard_screen/bloc/dashboard_screen_cubit.dart'
    as _i7;
import '../../network/api_client.dart' as _i9;
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
    gh.singleton<_i4.CurrencyService>(
        _i4.CurrencyService.create(gh<_i3.ChopperClient>()));
    gh.singleton<_i5.CurrencyRepositoryInterface>(
        _i6.CurrencyRepository(gh<_i4.CurrencyService>()));
    gh.factory<_i7.DashboardScreenCubit>(
        () => _i7.DashboardScreenCubit(gh<_i5.CurrencyRepositoryInterface>()));
    gh.factory<_i8.CurrencyDetailsScreenCubit>(() =>
        _i8.CurrencyDetailsScreenCubit(gh<_i5.CurrencyRepositoryInterface>()));
    return this;
  }
}

class _$ApiClientModule extends _i9.ApiClientModule {}
