import 'package:flutter_modularization/data/models/currency/currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_currencies_response.freezed.dart';
part 'all_currencies_response.g.dart';

@freezed
class AllCurrenciesResponse with _$AllCurrenciesResponse {
  factory AllCurrenciesResponse({
    required List<Currency> data,
  }) = _AllCurrenciesResponse;

  factory AllCurrenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$AllCurrenciesResponseFromJson(json);
}
