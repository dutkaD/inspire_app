import 'package:daily_quotes_app/quote_screen.dart';
import 'package:daily_quotes_app/service/inspirational_quote_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  // try out code here or run the tests
  var service = InspirationService();
  var quotes = service.getInspiringQuotes();

  // FLUTTER! do not uncomment YET!
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuoteScreen(quotes: quotes,),
  ));
}
