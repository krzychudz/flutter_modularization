import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter_modularization/data/models/all_currencies_response/all_currencies_response.dart';
import 'package:flutter_modularization/data/models/currency/currency.dart';
import 'package:flutter_modularization/network/services/currencies/currencies_service.dart';

final chopper = ChopperClient(
  baseUrl: Uri.https('api.coincap.io', '/v2'),
  services: [
    CurrenciesService.create(),
  ],
  interceptors: [
    (Request request) async => request.copyWith(
          headers: {
            'Accept': "application/json",
            'Content-type': "application/json",
            'Authorization': "Bearer 64451f56-13b8-42fd-bea0-fdea1964151f",
          },
        ),
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

class JsonToTypeConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  const JsonToTypeConverter(this.typeToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith(
      body: fromJsonData<BodyType, InnerType>(
        response.body,
        typeToJsonFactoryMap[InnerType]!,
      ),
    );
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);

    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
