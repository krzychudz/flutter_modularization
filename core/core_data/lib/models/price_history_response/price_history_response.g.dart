// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceHistoryResponse _$$_PriceHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PriceHistoryResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => PriceHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PriceHistoryResponseToJson(
        _$_PriceHistoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
