import 'package:chopper/chopper.dart';
import 'package:flutter_modularization/data/models/all_currencies_response/all_currencies_response.dart';
import 'package:injectable/injectable.dart';

part 'currencies_service.chopper.dart';

@Singleton()
@ChopperApi()
abstract class CurrencyService extends ChopperService {
  @factoryMethod
  static CurrencyService create(ChopperClient? apiClient) =>
      _$CurrencyService(apiClient);

  @Get(path: '/assets')
  Future<Response<AllCurrenciesResponse>> getCurrencies();
}
