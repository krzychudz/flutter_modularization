import 'package:flutter_modularization/data/models/currency/currency.dart';
import 'package:flutter_modularization/data/models/exchange_market/exchange_market.dart';
import 'package:flutter_modularization/data/models/price_history/price_history.dart';

abstract class CurrencyRepositoryInterface {
  Future<List<Currency>> getCurrencies();
  Future<Currency> getCurrencyDetails(String currencyId);
  Future<List<PriceHistory>> getCurrencyPriceHistory(String currencyId);
  Future<List<ExchangeMarket>> getCurrencyExchangeMarkets(String currencyId);
}
