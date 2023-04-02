import 'package:chopper/chopper.dart';
import 'package:flutter_modularization/data/models/all_currencies_response/all_currencies_response.dart';
import 'package:flutter_modularization/network/services/currencies/currencies_service.dart';

import 'converters/json_type_converter.dart';
import 'interceptors/auth_interceptor.dart';

final chopper = ChopperClient(
  baseUrl: Uri.https('api.coincap.io', '/v2'),
  services: [
    CurrenciesService.create(),
  ],
  interceptors: [
    authInterceptor,
    HttpLoggingInterceptor(),
  ],
  converter: JsonToTypeConverter(
    {
      AllCurrenciesResponse: (jsonData) =>
          AllCurrenciesResponse.fromJson(jsonData),
    },
  ),
  errorConverter: const JsonConverter(),
);
