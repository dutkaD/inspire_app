import 'package:daily_quotes_app/all_quote_view.dart';
import 'package:daily_quotes_app/random_quote_view.dart';
import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:flutter/material.dart';
import 'model/inspirational_quote.dart';

class QuoteScreen extends StatefulWidget {
  final List<InspirationalQuote> quotes;

  const QuoteScreen({super.key, required this.quotes});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final InspirationService service = InspirationService();
  bool _showAll = true;
  // we promise that it won't be null
  late InspirationalQuote randomQuote;

  @override
  initState() {
    super.initState();
    updateRandomQuote();
  }

  void updateRandomQuote() {
    setState(() {
      randomQuote = service.getRandomQuote(widget.quotes);
    });
  }

  void setShowAll(bool showAll) {
    setState(() {
      _showAll = showAll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Inspiration App"),
        actions: [
          IconButton(onPressed: (){
            setShowAll(true);
          }, icon: const Icon(Icons.list, size: 32,)),
          IconButton(onPressed: (){
            setShowAll(false);
          }, icon: const Icon(Icons.autorenew,  size: 32)),
        ],
      ),
      // backgroundColor: Colors.black,
      body: _showAll
          ? AllQuotesView(quotes: widget.quotes)
          : RandomQuotView(quote: randomQuote, onUpdate: (){updateRandomQuote();},),
    );
  }
}
