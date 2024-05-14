import 'package:daily_quotes_app/simple_quote_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/inspirational_quote.dart';

class AllQuotesView extends StatelessWidget {
  final List<InspirationalQuote> quotes;
  const AllQuotesView({super.key, required this.quotes});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: quotes
          .map((e) => SimpleQuoteCard(
                title: e.text,
              ))
          .toList(),
    );
  }
}
