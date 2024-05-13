import 'package:daily_quotes_app/quote_list.dart';
import 'package:flutter/material.dart';
import 'model/inspirational_quote.dart';

class QuoteChoice extends StatefulWidget {
  final List<InspirationalQuote> quotes;

  const QuoteChoice({super.key, required this.quotes});

  @override
  State<QuoteChoice> createState() => _QuoteChoiceState();
}

class _QuoteChoiceState extends State<QuoteChoice> {
  @override
  Widget build(BuildContext context) {
    return AllQuotesList(quotes: widget.quotes);
  }
}
