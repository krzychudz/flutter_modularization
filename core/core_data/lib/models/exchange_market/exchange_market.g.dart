// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeMarket _$$_ExchangeMarketFromJson(Map<String, dynamic> json) =>
    _$_ExchangeMarket(
      exchangeId: json['exchangeId'] as String,
      baseId: json['baseId'] as String,
      quoteId: json['quoteId'] as String,
      baseSymbol: json['baseSymbol'] as String,
      quoteSymbol: json['quoteSymbol'] as String,
      volumeUsd24Hr: json['volumeUsd24Hr'] as String,
      priceUsd: json['priceUsd'] as String,
      volumePercent: json['volumePercent'] as String,
    );

Map<String, dynamic> _$$_ExchangeMarketToJson(_$_ExchangeMarket instance) =>
    <String, dynamic>{
      'exchangeId': instance.exchangeId,
      'baseId': instance.baseId,
      'quoteId': instance.quoteId,
      'baseSymbol': instance.baseSymbol,
      'quoteSymbol': instance.quoteSymbol,
      'volumeUsd24Hr': instance.volumeUsd24Hr,
      'priceUsd': instance.priceUsd,
      'volumePercent': instance.volumePercent,
    };
