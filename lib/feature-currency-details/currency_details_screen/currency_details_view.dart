import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_modularization/core-data/extension/string_number.dart";
import "package:flutter_modularization/feature-currency-details/currency_details_screen/bloc/currency_details_screen_cubit.dart";
import "package:flutter_modularization/feature-currency-details/currency_details_screen/bloc/currency_details_screen_state.dart";

class CurrencyDetailsView extends StatelessWidget {
  const CurrencyDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: const CurrencyDetailsViewBody(),
    );
  }
}

class CurrencyDetailsViewBody extends StatelessWidget {
  const CurrencyDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: CustomScrollView(
        slivers: [
          SliverHeader(header: 'Details'),
          CurrencyDetailsSection(),
        ],
      ),
    );
  }
}

class SliverHeader extends StatelessWidget {
  const SliverHeader({
    super.key,
    required this.header,
  });

  final String header;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        color: Colors.black.withOpacity(0.2),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          header,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

class CurrencyDetailsSection extends StatelessWidget {
  const CurrencyDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrencyDetailsScreenCubit, CurrencyDetailsScreenState>(
      buildWhen: (previous, current) =>
          previous.currencyDetails != current.currencyDetails,
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                LabeledData(
                  label: 'Name: ',
                  value: state.currencyDetails?.name,
                ),
                const SizedBox(height: 8),
                LabeledData(
                  label: 'Price: ',
                  value: state.currencyDetails?.priceUsd?.fixedNumber(2),
                ),
                const SizedBox(height: 8),
                LabeledData(
                  label: 'Max supply: ',
                  value: state.currencyDetails?.maxSupply?.fixedNumber(2),
                ),
                const SizedBox(height: 8),
                LabeledData(
                  label: 'Supply: ',
                  value: state.currencyDetails?.supply?.fixedNumber(2),
                ),
                const SizedBox(height: 8),
                LabeledData(
                  label: 'Volume Usd 24hr: ',
                  value: state.currencyDetails?.volumeUsd24Hr?.fixedNumber(2),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LabeledData extends StatelessWidget {
  const LabeledData({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(label),
        ),
        Expanded(
          flex: 3,
          child:
              Text(value ?? '-', style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    );
  }
}
