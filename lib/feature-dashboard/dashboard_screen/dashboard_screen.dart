import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "./dashboard_view.dart";
import './bloc/dashboard_screen_cubit.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => DashboardScreenCubit(), 
    child: DashboardView(),
    );
  }
}