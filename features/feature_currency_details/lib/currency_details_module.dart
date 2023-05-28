import 'package:core_module/module.dart';
import 'package:feature_currency_details/currency_details_screen/currency_details_screen.dart';
import 'package:feature_currency_details/di.dart';
import 'package:feature_currency_details/market_details_screen/market_details_screen.dart';
import 'package:go_router/src/route.dart';

class CurrencyDetailsModule implements Module {
  @override
  List<RouteBase> get routes => [
        GoRoute(
          path: '/details/:currencyId',
          builder: (context, state) => CurrencyDetailsScreen(
            currencyId: state.params['currencyId']!,
          ),
          routes: [
            GoRoute(
              path: 'market/:marketId',
              builder: (context, state) => MarketDetailsScreen(
                marketId: state.params['marketId']!,
              ),
            ),
          ],
        ),
      ];

  @override
  void Function() get initDependencies => configureDependencies;
}
