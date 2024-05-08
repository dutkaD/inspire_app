import 'package:daily_quotes_app/model/inspirational_quote.dart';
import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:test/test.dart';

void main() {
  test('getInspiringQuotes should return a list of InspirationalQuote objects', () {
    InspirationService inspirationService = InspirationService();
    List<InspirationalQuote> quotes = inspirationService.getInspiringQuotes();

    // Ensure that the returned list is not null
    expect(quotes, isNotNull);
    expect(quotes.length, 10);
    expect(quotes[0].text,  "The only way to do great work is to love what you do.");
    expect(quotes[9].text,  "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it.");
  });


}