import 'package:flutter_modularization/data/models/currency/currency.dart';
import 'package:flutter_modularization/data/models/exchange_market/exchange_market.dart';
import 'package:flutter_modularization/data/models/price_history/price_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_details_screen_state.freezed.dart';
part 'currency_details_screen_state.g.dart';

@freezed
class CurrencyDetailsScreenState with _$CurrencyDetailsScreenState {
  factory CurrencyDetailsScreenState({
    Currency? currencyDetails,
    List<PriceHistory>? priceHistory,
    List<ExchangeMarket>? exchangeMarkets,
  }) = _CurrencyDetailsScreenState;

  factory CurrencyDetailsScreenState.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDetailsScreenStateFromJson(json);
}
