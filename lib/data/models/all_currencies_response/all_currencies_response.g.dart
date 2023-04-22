// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_currencies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllCurrenciesResponse _$$_AllCurrenciesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AllCurrenciesResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllCurrenciesResponseToJson(
        _$_AllCurrenciesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
