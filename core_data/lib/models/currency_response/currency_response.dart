import 'package:core_data/models/currency/currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_response.freezed.dart';
part 'currency_response.g.dart';

@freezed
class CurrencyResponse with _$CurrencyResponse {
  factory CurrencyResponse({
    required Currency data,
  }) = _CurrencyResponse;

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);
}
