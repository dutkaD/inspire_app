import 'package:flutter/material.dart';
import 'model/inspirational_quote.dart';

class RandomQuotView extends StatelessWidget {
  final InspirationalQuote quote;
  final Function onUpdate;
  const RandomQuotView({super.key, required this.quote, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Card(
            color: const Color.fromRGBO(239, 142, 252, 0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text("Random Quote"),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            onUpdate();
                          },
                          icon: const Icon(Icons.rotate_right_sharp)),
                      Column(
                        children: [
                          Text(
                            quote.text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 35),
                          ),
                          Text(
                            quote.author,
                            style: const TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
