import '../model/inspirational_quote.dart';

// Class that provides or manipulates quotes from teh repository

class InspirationService {

  // TODO 2.1: Get rawQuotes from QuoteRepository and map them to InspirationalQuote objects
  List<InspirationalQuote> getInspiringQuotes() {
    return [];
  }

  // TODO 2.2: Sort by rank depending ascending or descending
  void sortQuotesByRank(List<InspirationalQuote> unsorted, bool ascending) {

  }

  // TODO: 2.3: Return a random InspirationalQuote from quotes
  InspirationalQuote getRandomQuote(List<InspirationalQuote> quotes) {
    throw Exception("Not implemented!");
  }

  // TODO: 2.4: Return a list of quotes that contains text
  List<InspirationalQuote> searchText(
      List<InspirationalQuote> quotes, String text) {
    return [];
  }
}
