// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_details_screen_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyDetailsScreenState _$$_CurrencyDetailsScreenStateFromJson(
        Map<String, dynamic> json) =>
    _$_CurrencyDetailsScreenState(
      currencyDetails: json['currencyDetails'] == null
          ? null
          : Currency.fromJson(json['currencyDetails'] as Map<String, dynamic>),
      priceHistory: (json['priceHistory'] as List<dynamic>?)
          ?.map((e) => PriceHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      exchangeMarkets: (json['exchangeMarkets'] as List<dynamic>?)
          ?.map((e) => ExchangeMarket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CurrencyDetailsScreenStateToJson(
        _$_CurrencyDetailsScreenState instance) =>
    <String, dynamic>{
      'currencyDetails': instance.currencyDetails,
      'priceHistory': instance.priceHistory,
      'exchangeMarkets': instance.exchangeMarkets,
    };
