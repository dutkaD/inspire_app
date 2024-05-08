import 'package:daily_quotes_app/repository/repository.dart';

class InspirationalQuote {
  String text;
  String author;
  int rank;

  InspirationalQuote(this.text, this.author, this.rank);

  String get tag {
    // todo: check if there is a tag assigned to an author, otherwise return "general"
    return QuoteRepository.getTag(author) ?? "general";
  }
}
