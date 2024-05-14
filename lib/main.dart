import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  // try out code here or run the tests

  // FLUTTER! do not uncomment YET!
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            Container(
                height: 500,
                width: 150,
                color: Colors.pink,
                child: Center(
                    child: Text(
                  "Fanciest app of them all",
                  textAlign: TextAlign.center,
                ))),
            Text(
              "Styled text",
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            Icon(
              Icons.add_a_photo_outlined,
              size: 60,
            ),
            SizedBox(
              height: 50,
            ),
            IconButton(
                onPressed: () {
                  print("tapped");
                },
                icon: Icon(
                  Icons.add_a_photo_outlined,
                  size: 60,
                )),
            ElevatedButton(
                onPressed: () {
                  print("Elevated button click");
                },
                child: Text("click me")),
            SizedBox(
                width: 100,
                child: Text(
                  "Working 9 to 5, what a way to make a living",
                  overflow: TextOverflow.ellipsis,
                )),
            Card(
              color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Text in the card"),
              ),
            )
                    ],
                  ),
          )),
    ),
  ));
}
