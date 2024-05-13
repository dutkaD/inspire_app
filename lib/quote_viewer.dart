import 'package:daily_quotes_app/all_quote_view.dart';
import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:flutter/material.dart';
import 'model/inspirational_quote.dart';

class QuoteViewer extends StatefulWidget {
  final List<InspirationalQuote> quotes;

  const QuoteViewer({super.key, required this.quotes});

  @override
  State<QuoteViewer> createState() => _QuoteViewerState();
}

class _QuoteViewerState extends State<QuoteViewer> {
  final InspirationService service = InspirationService();
  bool _showAll = true;

  // we promise that it won't be null
  late InspirationalQuote quote;

  @override
  initState() {
    super.initState();
    updateRandomQuote();
  }

  void updateRandomQuote() {
    setState(() {
      quote = service.getRandomQuote(widget.quotes);
    });
  }

  void toggleShowAll() {
    setState(() {
      _showAll = !_showAll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                toggleShowAll();
              },
              child: Text(
                _showAll ? "Random view" : "All quotes",
                style: const TextStyle(fontSize: 20),
              )),
        ),
        _showAll
            ? AllQuotesView(quotes: widget.quotes)
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Card(
                      color: const Color.fromRGBO(239, 142, 252, 0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text("Random Quote"),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      updateRandomQuote();
                                    },
                                    icon: const Icon(Icons.rotate_right_sharp)),
                                Column(
                                  children: [
                                    Text(
                                      quote.text,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 35),
                                    ),
                                    Text(
                                      quote.author,
                                      style: const TextStyle(color: Colors.white, fontSize: 25),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
