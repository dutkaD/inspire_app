import '../model/inspirational_quote.dart';
import '../repository/repository.dart';

class InspirationService {
  List<InspirationalQuote> getInspiringQuotes() {
    List<String> rawQuotes = QuoteRepository.getQuotes();

    // print("Printing raw data");
    // for (var q in rawQuotes) {
    //   print(q);
    // }

    // todo 1: map pipe separated ("|") values from rawQuotes to InspirationalQuote objects

    return [];
  }
}
