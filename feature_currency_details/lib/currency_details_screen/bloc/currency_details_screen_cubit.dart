import 'package:core_data/extension/cast.dart';
import 'package:core_data/models/currency/currency.dart';
import 'package:core_data/models/exchange_market/exchange_market.dart';
import 'package:core_data/models/price_history/price_history.dart';
import 'package:core_data/repositories/currency_repository/currency_repository_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'currency_details_screen_state.dart';

@injectable
class CurrencyDetailsScreenCubit extends Cubit<CurrencyDetailsScreenState> {
  CurrencyDetailsScreenCubit(
    this._currencyRepository,
  ) : super(CurrencyDetailsScreenState());

  final CurrencyRepositoryInterface _currencyRepository;

  void init(String currencyId) async {
    final detailsData = await Future.wait([
      _currencyRepository.getCurrencyDetails(currencyId),
      _currencyRepository.getCurrencyExchangeMarkets(currencyId),
      _currencyRepository.getCurrencyPriceHistory(currencyId)
    ]);

    emit(state.copyWith(
      currencyDetails: tryCast<Currency>(detailsData[0]),
      exchangeMarkets: tryCast<List<ExchangeMarket>>(detailsData[1]),
      priceHistory: tryCast<List<PriceHistory>>(detailsData[2]),
    ));
  }
}
