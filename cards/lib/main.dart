import 'package:flutter/material.dart';
import 'Quote.dart';

void main() {
  runApp(MaterialApp(
    home: CardQuote(),
  ));
}

class CardQuote extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<CardQuote> {
  List<Quote> quote = [
    Quote(auth: "1", text: "One"),
    Quote(auth: "2", text: "Two"),
    Quote(auth: "3", text: "Three"),
  ];

  Widget quoteCard(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(15.1, 15.0, 15.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 21.1,

            ),
          ),
          SizedBox(
            height: 7.1,
          ),
          Text(
            quote.auth,
            style: TextStyle(
              fontSize: 21.1,
            ),
          )
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("QuoteCards"),
      ),
      body: Column(
        children: quote.map((q) => quoteCard(q)).toList(),
      ),
    );
  }
}

