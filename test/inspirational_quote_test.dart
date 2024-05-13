import 'package:daily_quotes_app/model/inspirational_quote.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('TODO 1.1: RankLevel getter returns correct RankLevel for different ranks', () {
    InspirationalQuote quote1 = InspirationalQuote('Text 1', 'Author 1', 15);
    InspirationalQuote quote2 = InspirationalQuote('Text 2', 'Author 2', 8);
    InspirationalQuote quote3 = InspirationalQuote('Text 3', 'Author 3', 3);
    InspirationalQuote quote4 = InspirationalQuote('Text wer', 'Author 4', 10);

    expect(quote1.rankLevel, equals(RankLevel.top));
    expect(quote2.rankLevel, equals(RankLevel.average));
    expect(quote3.rankLevel, equals(RankLevel.mediocre));
    expect(quote4.rankLevel, equals(RankLevel.top));
  });


  test('TODO 1.2: Word count getter returns correct word count', () {
    InspirationalQuote quote1 = InspirationalQuote(
        'The only way to do great work is to love what you do.', 'Steve Jobs', 8);
    InspirationalQuote quote2 = InspirationalQuote(
        'Success is not final, failure is not fatal.', 'Winston Churchill', 9);
    InspirationalQuote quote3 = InspirationalQuote(
        'Believe you can and you’re halfway there.', 'Theodore Roosevelt', 7);

    expect(quote1.wordCount, equals(13));
    expect(quote2.wordCount, equals(8));
    expect(quote3.wordCount, 7);
  });
}