// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_screen_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardScreenState _$$_DashboardScreenStateFromJson(
        Map<String, dynamic> json) =>
    _$_DashboardScreenState(
      currencies: (json['currencies'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DashboardScreenStateToJson(
        _$_DashboardScreenState instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
    };
