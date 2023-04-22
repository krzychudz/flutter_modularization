import "package:flutter/material.dart";

class CurrencyDetailsView extends StatelessWidget {
  const CurrencyDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("currency_details",),),
      body: Center(child: Text("currency_details",)),
    );
  }
}