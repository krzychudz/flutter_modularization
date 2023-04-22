import 'package:chopper/chopper.dart';
import 'package:flutter_modularization/data/models/all_currencies_response/all_currencies_response.dart';
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
          },
        ),
        errorConverter: const JsonConverter(),
      );
}
