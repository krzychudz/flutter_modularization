import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modularization/core-data/repositories/currency_repository/currency_repository_interface.dart';
import 'package:injectable/injectable.dart';
import 'dashboard_screen_state.dart';

@injectable
class DashboardScreenCubit extends Cubit<DashboardScreenState> {
  DashboardScreenCubit(
    this._currencyRepository,
  ) : super(DashboardScreenState());

  final CurrencyRepositoryInterface _currencyRepository;

  void init() async {
    final currenciesData = await _currencyRepository.getCurrencies();
    emit(state.copyWith(currencies: currenciesData));
  }
}
