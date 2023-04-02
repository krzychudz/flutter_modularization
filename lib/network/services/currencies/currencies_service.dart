import 'package:chopper/chopper.dart';
import 'package:flutter_modularization/data/models/all_currencies_response/all_currencies_response.dart';

part 'currencies_service.chopper.dart';

@ChopperApi()
abstract class CurrenciesService extends ChopperService {
  static CurrenciesService create([ChopperClient? client]) =>
      _$CurrenciesService(client);

  @Get(path: '/assets')
  Future<Response<AllCurrenciesResponse>> getCurrencies();
}
