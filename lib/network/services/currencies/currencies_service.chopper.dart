// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CurrencyService extends CurrencyService {
  _$CurrencyService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CurrencyService;

  @override
  Future<Response<AllCurrenciesResponse>> getCurrencies() {
    final Uri $url = Uri.parse('/assets');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AllCurrenciesResponse, AllCurrenciesResponse>($request);
  }
}
