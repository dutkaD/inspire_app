import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:daily_quotes_app/quote_card.dart';
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
        body: Center(
          child: Column(
            children: [
              const Text("My favorite quotes"),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: quotes.map((e) => QuoteCard(title: e.text,)).toList(),
              ),
            ],
          ),
        )),
  ));
}
