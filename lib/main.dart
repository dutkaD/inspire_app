import 'package:daily_quotes_app/service/inspirational_quote_service.dart';

void main() {

  var ascendingSort = false;
  var inspirationService = InspirationService();
  var quotes = inspirationService.getInspiringQuotes();
  inspirationService.sortQuotesByRank(quotes, ascendingSort);

  // runApp(const MyApp());
}