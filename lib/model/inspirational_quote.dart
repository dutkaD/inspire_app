enum RankLevel { top, average, mediocre }

class InspirationalQuote {
  String text;
  String author;
  int rank;

  InspirationalQuote(this.text, this.author, this.rank);

  // TODO 1.1: complete getter that returns a RankLevel of the quote
  // top >= 10
  // average >= 5 and < 10
  // mediocre < 5
  RankLevel get rankLevel {
    throw Exception("Not implemented!");
  }

  // TODO 1.2: return number of words in text
  int get wordCount {
    return -1;
  }

  // Example getter (demo)
  int get quoteLength1 {
    return text.length;
  }

  // Example getter (demo)
  int get quoteLength2 => text.length;
}
