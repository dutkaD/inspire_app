import 'package:daily_quotes_app/quote_card.dart';
import 'package:flutter/cupertino.dart';

import 'model/inspirational_quote.dart';

class AllQuotesList extends StatelessWidget {
  final List<InspirationalQuote> quotes;

  const AllQuotesList({super.key, required this.quotes});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((e) => QuoteCard(
                  title: e.text,
                ))
            .toList(),
      ),
    );
  }
}
