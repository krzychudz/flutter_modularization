import 'package:flutter_modularization/feature-currency-details/currency_details_screen/currency_details_screen.dart';
import 'package:flutter_modularization/feature-dashboard/dashboard_screen/dashboard_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/details/:currencyId',
      builder: (context, state) => CurrencyDetailsScreen(
        currencyId: state.params['currencyId']!,
      ),
    ),
  ],
);
