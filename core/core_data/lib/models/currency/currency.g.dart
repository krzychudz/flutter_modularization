// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      id: json['id'] as String,
      rank: json['rank'] as String?,
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      supply: json['supply'] as String?,
      maxSupply: json['maxSupply'] as String?,
      marketCapUsd: json['marketCapUsd'] as String?,
      volumeUsd24Hr: json['volumeUsd24Hr'] as String?,
      priceUsd: json['priceUsd'] as String?,
      changePercent24Hr: json['changePercent24Hr'] as String?,
      vwap24Hr: json['vwap24Hr'] as String?,
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'symbol': instance.symbol,
      'name': instance.name,
      'supply': instance.supply,
      'maxSupply': instance.maxSupply,
      'marketCapUsd': instance.marketCapUsd,
      'volumeUsd24Hr': instance.volumeUsd24Hr,
      'priceUsd': instance.priceUsd,
      'changePercent24Hr': instance.changePercent24Hr,
      'vwap24Hr': instance.vwap24Hr,
    };
