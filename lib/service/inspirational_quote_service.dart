import 'dart:math';
import '../model/inspirational_quote.dart';
import '../repository/repository.dart';

class InspirationService {

  // TODO 2.1: Get rawQuotes from QuoteRepository and map them to InspirationalQuote objects
  List<InspirationalQuote> getInspiringQuotes() {
    List<String> rawQuotes = QuoteRepository.getQuotes();
    return rawQuotes
        .map((e) => e.split("|"))
        .map((e) => InspirationalQuote(e[0], e[1], int.parse(e[2])))
        .toList();
  }

  // TODO 2.2: Sort by rank depending ascending or descending
  void sortQuotesByRank(List<InspirationalQuote> unsorted, bool ascending) {
    if (ascending) {
      unsorted.sort((a, b) => a.rank.compareTo(b.rank));
    } else {
      unsorted.sort((a, b) => b.rank.compareTo(a.rank));
    }
  }

  // TODO: 2.3: Return a random InspirationalQuote from quotes
  InspirationalQuote getRandomQuote(List<InspirationalQuote> quotes) {
    Random random = Random();
    int randomIndex = random.nextInt(quotes.length);
    return quotes[randomIndex];
  }

  // TODO: 2.4: Return a list of quotes that contains text
  List<InspirationalQuote> searchText(
      List<InspirationalQuote> quotes, String text) {
    return quotes
        .where((quote) =>
            quote.text.toLowerCase().contains(text.toLowerCase()) ||
            quote.author.toLowerCase().contains(text.toLowerCase()))
        .toList();
  }
}
