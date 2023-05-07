import 'package:chopper/chopper.dart';
import 'package:flutter_modularization/data/models/all_currencies_response/all_currencies_response.dart';
import 'package:flutter_modularization/data/models/currency_response/currency_response.dart';
import 'package:flutter_modularization/data/models/exchange_markets_response/exchange_market_response.dart';
import 'package:flutter_modularization/data/models/price_history_response/price_history_response.dart';
import 'package:injectable/injectable.dart';

import 'converters/json_type_converter.dart';
import 'interceptors/auth_interceptor.dart';

@module
abstract class ApiClientModule {
  @singleton
  ChopperClient get chopperClient => ChopperClient(
        baseUrl: Uri.https('api.coincap.io', '/v2'),
        interceptors: [
          authInterceptor,
          HttpLoggingInterceptor(),
        ],
        converter: JsonToTypeConverter(
          {
            AllCurrenciesResponse: (jsonData) =>
                AllCurrenciesResponse.fromJson(jsonData),
            CurrencyResponse: (jsonData) => CurrencyResponse.fromJson(jsonData),
            PriceHistoryResponse: (jsonData) =>
                PriceHistoryResponse.fromJson(jsonData),
            ExchangeMarketResponse: (jsonData) =>
                ExchangeMarketResponse.fromJson(jsonData)
          },
        ),
        errorConverter: const JsonConverter(),
      );
}
