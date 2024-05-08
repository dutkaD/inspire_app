import 'dart:math';

import '../model/inspirational_quote.dart';
import '../repository/repository.dart';

class InspirationService {
  List<InspirationalQuote> getInspiringQuotes() {
    List<String> rawQuotes = QuoteRepository.getQuotes();
    return rawQuotes
        .map((e) => e.split("|"))
        .map((e) => InspirationalQuote(e[0], e[1], int.parse(e[2])))
        .toList();
  }

  void sortQuotesByRank(List<InspirationalQuote> unsorted, bool ascending) {
    if (ascending) {
      unsorted.sort((a, b) => a.rank.compareTo(b.rank));
    } else {
      unsorted.sort((a, b) => b.rank.compareTo(a.rank));
    }
  }

  InspirationalQuote getRandomQuote(List<InspirationalQuote> quotes) {
    Random random = Random();
    int randomIndex = random.nextInt(quotes.length);
    return quotes[randomIndex];
  }

  List<InspirationalQuote> searchText(List<InspirationalQuote> quotes,
      String text) {
    return quotes.where((quote) =>
    quote.text.toLowerCase().contains(text.toLowerCase()) ||
        quote.author.toLowerCase().contains(text.toLowerCase())).toList();
  }
}
