import 'package:daily_quotes_app/quote_choice.dart';
import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:flutter/material.dart';

import 'model/inspirational_quote.dart';

void main() {
  var service = InspirationService();
  List<InspirationalQuote> quotes = service.getInspiringQuotes();

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Inspiration App"),
      ),
      body: QuoteChoice(quotes: quotes,)
    ),
  ));
}
