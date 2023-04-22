import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_details_screen_state.freezed.dart';
part 'currency_details_screen_state.g.dart';

@freezed
class CurrencyDetailsScreenState with _$CurrencyDetailsScreenState {

  factory CurrencyDetailsScreenState() = _CurrencyDetailsScreenState;

  factory CurrencyDetailsScreenState.fromJson(Map<String, dynamic> json) => _$CurrencyDetailsScreenStateFromJson(json);
}