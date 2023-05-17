import 'package:core_data/models/currency/currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_screen_state.freezed.dart';
part 'dashboard_screen_state.g.dart';

@freezed
class DashboardScreenState with _$DashboardScreenState {
  factory DashboardScreenState({
    List<Currency>? currencies,
  }) = _DashboardScreenState;

  factory DashboardScreenState.fromJson(Map<String, dynamic> json) =>
      _$DashboardScreenStateFromJson(json);
}
