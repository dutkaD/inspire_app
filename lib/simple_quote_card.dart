import 'package:flutter/material.dart';

class SimpleQuoteCard extends StatelessWidget {
  final String title;
  const SimpleQuoteCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Card(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: TextStyle(fontSize: 25)),
        ),
      ),
    );
  }
}


