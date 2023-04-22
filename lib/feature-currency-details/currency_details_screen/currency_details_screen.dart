import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "./currency_details_view.dart";
import './bloc/currency_details_screen_cubit.dart';

class CurrencyDetailsScreen extends StatelessWidget {
  const CurrencyDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => CurrencyDetailsScreenCubit(), 
    child: CurrencyDetailsView(),
    );
  }
}