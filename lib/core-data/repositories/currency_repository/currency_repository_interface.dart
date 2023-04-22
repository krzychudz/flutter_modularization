import 'package:flutter_modularization/data/models/currency/currency.dart';

abstract class CurrencyRepositoryInterface {
  Future<List<Currency>> getCurrencies();
}
