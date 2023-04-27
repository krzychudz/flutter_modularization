import 'package:chopper/chopper.dart';
import 'package:flutter_modularization/data/models/all_currencies_response/all_currencies_response.dart';
import 'package:flutter_modularization/data/models/currency_response/currency_response.dart';
import 'package:flutter_modularization/data/models/exchange_markets_response/exchange_market_response.dart';
import 'package:flutter_modularization/data/models/price_history_response/price_history_response.dart';
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

  @Get(path: '/assets/{currencyId}')
  Future<Response<CurrencyResponse>> getCurrency(
      @Path('currencyId') String currencyId);

  @Get(path: '/assets/{currencyId}/history?interval=m15')
  Future<Response<PriceHistoryResponse>> getPriceHistory(
      @Path('currencyId') String currencyId);

  @Get(path: '/assets/{currencyId}/markets')
  Future<Response<ExchangeMarketResponse>> getExchangeMarkets(
      @Path('currencyId') String currencyId);
}
