import 'package:core_data/models/currency/currency.dart';
import 'package:core_data/models/exchange_market/exchange_market.dart';
import 'package:core_data/models/price_history/price_history.dart';
import 'package:core_data/repositories/currency_repository/currency_repository_interface.dart';
import 'package:core_data/services/currencies/currencies_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CurrencyRepositoryInterface)
class CurrencyRepository implements CurrencyRepositoryInterface {
  CurrencyRepository(this._currenciesService);

  final CurrencyService _currenciesService;

  @override
  Future<List<Currency>> getCurrencies() async {
    final currencyDataResponse = await _currenciesService.getCurrencies();

    if (!currencyDataResponse.isSuccessful) {
      throw currencyDataResponse.error!;
    }

    return currencyDataResponse.body?.data ?? [];
  }

  @override
  Future<Currency> getCurrencyDetails(String currencyId) async {
    final currencyDataResponse =
        await _currenciesService.getCurrency(currencyId);

    if (!currencyDataResponse.isSuccessful) {
      throw currencyDataResponse.error!;
    }

    return currencyDataResponse.body!.data;
  }

  @override
  Future<List<ExchangeMarket>> getCurrencyExchangeMarkets(
      String currencyId) async {
    final currencyDataResponse =
        await _currenciesService.getExchangeMarkets(currencyId);

    if (!currencyDataResponse.isSuccessful) {
      throw currencyDataResponse.error!;
    }

    return currencyDataResponse.body!.data;
  }

  @override
  Future<List<PriceHistory>> getCurrencyPriceHistory(String currencyId) async {
    final currencyDataResponse =
        await _currenciesService.getPriceHistory(currencyId);

    if (!currencyDataResponse.isSuccessful) {
      throw currencyDataResponse.error!;
    }

    return currencyDataResponse.body!.data;
  }
}
