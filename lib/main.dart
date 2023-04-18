import 'package:flutter/material.dart';
import 'package:flutter_modularization/di/injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modularization/network/services/currencies/currencies_service.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      try {
        final currenciesData = await getIt<CurrenciesService>().getCurrencies();
        print("data: $currenciesData");
      } catch (e) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
