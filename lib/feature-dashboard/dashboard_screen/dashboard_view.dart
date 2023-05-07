import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter_modularization/core-data/extension/string_number.dart';
import "package:flutter_modularization/data/models/currency/currency.dart";
import "package:flutter_modularization/feature-dashboard/dashboard_screen/bloc/dashboard_screen_cubit.dart";
import "package:flutter_modularization/feature-dashboard/dashboard_screen/bloc/dashboard_screen_state.dart";
import "package:go_router/go_router.dart";

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currencies"),
      ),
      body: const DashboardViewBody(),
    );
  }
}

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: BlocBuilder<DashboardScreenCubit, DashboardScreenState>(
          builder: (context, state) {
        if (state.currencies == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return CurrenciesList(data: state.currencies!);
      }),
    );
  }
}

class CurrenciesList extends StatelessWidget {
  const CurrenciesList({
    super.key,
    required this.data,
  });

  final List<Currency> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final currentCurrency = data[index];
          return CurrencyItem(
            currentCurrency: currentCurrency,
            onTap: (currencyId) => context.push('/details/$currencyId'),
          );
        });
  }
}

class CurrencyItem extends StatelessWidget {
  const CurrencyItem({
    super.key,
    required this.currentCurrency,
    this.onTap,
  });

  final Currency currentCurrency;
  final Function(String currencyId)? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () => onTap?.call(currentCurrency.id),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SymbolName(symbol: currentCurrency.symbol ?? 'X'),
              const SizedBox(width: 16),
              InfoSection(currentCurrency: currentCurrency),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
    required this.currentCurrency,
  });

  final Currency currentCurrency;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          currentCurrency.name ?? 'Unknown',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 1),
        Text('${currentCurrency.priceUsd?.fixedNumber(2)} USD'),
      ],
    );
  }
}

class SymbolName extends StatelessWidget {
  const SymbolName({
    super.key,
    required this.symbol,
  });
  final String symbol;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 70),
      child: Text(
        symbol,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
