import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_modularization/core-data/repositories/currency_repository/currency_repository_interface.dart";
import "package:flutter_modularization/di/injectable/injectable.dart";
import "./currency_details_view.dart";
import './bloc/currency_details_screen_cubit.dart';

class CurrencyDetailsScreen extends StatelessWidget {
  const CurrencyDetailsScreen({
    Key? key,
    required this.currencyId,
  }) : super(key: key);

  final String currencyId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrencyDetailsScreenCubit(
        getIt.get<CurrencyRepositoryInterface>(),
      )..init(currencyId),
      child: const CurrencyDetailsView(),
    );
  }
}
