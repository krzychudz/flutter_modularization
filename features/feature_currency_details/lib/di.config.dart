// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_data/di.module.dart' as _i3;
import 'package:core_data/repositories/currency_repository/currency_repository_interface.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'currency_details_screen/bloc/currency_details_screen_cubit.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> featureCurrencyDetailsInit({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.CoreDataPackageModule().init(gh);
    gh.factory<_i4.CurrencyDetailsScreenCubit>(() =>
        _i4.CurrencyDetailsScreenCubit(gh<_i5.CurrencyRepositoryInterface>()));
    return this;
  }
}
