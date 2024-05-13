class QuoteRepository {
  static List<String> getQuotes() {
    // Quote data where element is a line has three comma separated values
    // x, y, z
    // where x -> quote, y -> author, z -> rank (integer)

    const List<String> rawQuotes = [
      "The only way to do great work is to love what you do.|Steve Jobs|5",
      "Success is not final, failure is not fatal: It is the courage to continue that counts.|Winston Churchill|0",
      "Believe you can and you're halfway there.|Theodore Roosevelt|3",
      "The future belongs to those who believe in the beauty of their dreams.|Eleanor Roosevelt|4",
      "Opportunities don't happen, you create them.|Chris Grosser|3",
      "In the middle of difficulty lies opportunity.|Albert Einstein|4",
      "The only limit to our realization of tomorrow will be our doubts of today.|Franklin D. Roosevelt|12",
      "Success is walking from failure to failure with no loss of enthusiasm.|Winston Churchill|8",
      "The only person you are destined to become is the person you decide to be.|Ralph Waldo Emerson|8",
      "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it.|Jordan Belfort|2"
    ];

    return rawQuotes;
  }
}
