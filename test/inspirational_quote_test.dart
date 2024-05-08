import 'package:daily_quotes_app/model/inspirational_quote.dart';
import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:test/test.dart';

void main() {
  test('test author has no tag, default to "general" tag', () {
    InspirationalQuote myQuote = InspirationalQuote("Liegen ist immer gut", "Ronald McDonald", 100);

    expect(myQuote.tag, isNotNull);
    expect(myQuote.tag, "general");
    });

  test('test author has a tag, return tag', () {
    InspirationalQuote myQuote = InspirationalQuote("Something very smart", "Albert Einstein", 5);

    expect(myQuote.tag, isNotNull);
    expect(myQuote.tag, "science");
  });
}