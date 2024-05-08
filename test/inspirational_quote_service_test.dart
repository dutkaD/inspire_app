import 'package:daily_quotes_app/model/inspirational_quote.dart';
import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:test/test.dart';

void main() {
  test('test mapping raw to object', () {
    InspirationService inspirationService = InspirationService();
    List<InspirationalQuote> quotes = inspirationService.getInspiringQuotes();

    expect(quotes, isNotNull);
    expect(quotes.length, 10);
    expect(quotes[0].text,  "The only way to do great work is to love what you do.");
    expect(quotes[9].text,  "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it.");
  });


  test('test sort by rank: from max to min', () {
    InspirationService inspirationService = InspirationService();
    var quotes = inspirationService.getInspiringQuotes();

    inspirationService.sortQuotesByRank(quotes, true);

    expect(quotes, isNotNull);
    expect(quotes.length, 10);
    expect(quotes[0].text,  "Success is not final, failure is not fatal: It is the courage to continue that counts.");
    expect(quotes[0].rank, 0);
    expect(quotes[9].text,  "The only limit to our realization of tomorrow will be our doubts of today.");
    expect(quotes[9].rank, 12);
  });

  test('test sort by rank: from min to max', () {
    InspirationService inspirationService = InspirationService();
    var quotes = inspirationService.getInspiringQuotes();

    inspirationService.sortQuotesByRank(quotes, false);

    expect(quotes, isNotNull);
    expect(quotes.length, 10);
    expect(quotes[0].text,  "The only limit to our realization of tomorrow will be our doubts of today.");
    expect(quotes[0].rank, 12);
    expect(quotes[9].text,  "Success is not final, failure is not fatal: It is the courage to continue that counts.");
    expect(quotes[9].rank, 0);
  });


  test('random quote', () {
    InspirationService inspirationService = InspirationService();
    var quotes = inspirationService.getInspiringQuotes();

    inspirationService.getRandomQuote(quotes);

    expect(quotes, isNotNull);
  });


  test('search "in"', () {
    InspirationService inspirationService = InspirationService();
    var quotes = inspirationService.getInspiringQuotes();

    var found = inspirationService.searchText(quotes, "in");

    expect(found, isNotNull);
    expect(found.length, 7);
  });
}