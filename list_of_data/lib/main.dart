import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // using the list of quotes
  List<Quote> quotes = [
    Quote(author: "Steve Jobs", text: "Stay hungry, Stay Foolish"),
    Quote(author: "Unknown", text: "Code never lies"),
    Quote(author: "Om", text: "Programing is best, func the rest"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // using map function to cycle through the list
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList()// toList() method is used to convert into list
      ),
    );
  }
}

