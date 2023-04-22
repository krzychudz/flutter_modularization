import 'package:flutter_modularization/core-data/repositories/currency_repository/currency_repository_interface.dart';
import 'package:flutter_modularization/data/models/currency/currency.dart';
import 'package:flutter_modularization/network/services/currencies/currencies_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CurrencyRepositoryInterface)
class CurrencyRepository implements CurrencyRepositoryInterface {
  CurrencyRepository(this._currenciesService);

  final CurrencyService _currenciesService;

  @override
  Future<List<Currency>> getCurrencies() async {
    final currencyData = await _currenciesService.getCurrencies();

    if (!currencyData.isSuccessful) {
      // error hanlding
    }

    return currencyData.body?.data ?? [];
  }
}
