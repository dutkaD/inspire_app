import 'package:flutter/material.dart';

import 'model/inspirational_quote.dart';

class QuoteScreen extends StatelessWidget {
  final List<InspirationalQuote> quotes;
  const QuoteScreen({super.key, required this.quotes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inspiration App"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: quotes.map((e) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(e.text),
        )).toList(),
      ),
    );
  }
}
