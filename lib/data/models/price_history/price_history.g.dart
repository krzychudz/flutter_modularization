// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceHistory _$$_PriceHistoryFromJson(Map<String, dynamic> json) =>
    _$_PriceHistory(
      price: (json['price'] as num?)?.toDouble(),
      time: json['time'] as int,
    );

Map<String, dynamic> _$$_PriceHistoryToJson(_$_PriceHistory instance) =>
    <String, dynamic>{
      'price': instance.price,
      'time': instance.time,
    };
