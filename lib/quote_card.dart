import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final String title;
  const QuoteCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title),
      ),
    );
  }
}


