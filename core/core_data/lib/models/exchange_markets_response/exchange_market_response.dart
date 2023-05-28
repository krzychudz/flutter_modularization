import 'package:core_data/models/exchange_market/exchange_market.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_market_response.freezed.dart';
part 'exchange_market_response.g.dart';

@freezed
class ExchangeMarketResponse with _$ExchangeMarketResponse {
  factory ExchangeMarketResponse({
    required List<ExchangeMarket> data,
  }) = _ExchangeMarketResponse;

  factory ExchangeMarketResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeMarketResponseFromJson(json);
}
