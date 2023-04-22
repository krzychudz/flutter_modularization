import 'package:flutter_modularization/data/models/price_history/price_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_history_response.freezed.dart';
part 'price_history_response.g.dart';

@freezed
class PriceHistoryResponse with _$PriceHistoryResponse {
  factory PriceHistoryResponse({
    required List<PriceHistory> data,
  }) = _PriceHistoryResponse;

  factory PriceHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$PriceHistoryResponseFromJson(json);
}
