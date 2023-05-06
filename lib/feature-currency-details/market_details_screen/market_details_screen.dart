import 'package:flutter/material.dart';

class MarketDetailsScreen extends StatelessWidget {
  const MarketDetailsScreen({
    super.key,
    required this.marketId,
  });

  final String marketId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market Details'),
      ),
      body: Center(
        child: Text('DETAILS MARKET: $marketId'),
      ),
    );
  }
}
