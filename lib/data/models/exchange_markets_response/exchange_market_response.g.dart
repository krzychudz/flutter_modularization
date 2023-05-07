// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_market_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeMarketResponse _$$_ExchangeMarketResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExchangeMarketResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => ExchangeMarket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExchangeMarketResponseToJson(
        _$_ExchangeMarketResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
