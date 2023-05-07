import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_market.freezed.dart';
part 'exchange_market.g.dart';

@freezed
class ExchangeMarket with _$ExchangeMarket {
  factory ExchangeMarket({
    required String exchangeId,
    required String baseId,
    required String quoteId,
    required String baseSymbol,
    required String quoteSymbol,
    required String volumeUsd24Hr,
    required String priceUsd,
    required String volumePercent,
  }) = _ExchangeMarket;

  factory ExchangeMarket.fromJson(Map<String, dynamic> json) =>
      _$ExchangeMarketFromJson(json);
}
