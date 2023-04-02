import 'package:flutter/material.dart';
import 'package:flutter_modularization/network/api_client.dart';
import 'package:logging/logging.dart';

import 'network/services/currencies/currencies_service.dart';

void main() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

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
        final currenciesData =
            await chopper.getService<CurrenciesService>().getCurrencies();
      } catch (e) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
