import "package:flutter/material.dart";

class CurrencyDetailsView extends StatelessWidget {
  const CurrencyDetailsView({Key? key, this.currencyId = 'dad'})
      : super(key: key);

  final String currencyId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currencyId),
      ),
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
        slivers: [],
      ),
    );
  }
}
