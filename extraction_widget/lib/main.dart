import 'package:flutter/material.dart';
import 'Quote.dart';

void main() {
  runApp(MaterialApp(
    home: ExtractingWidgetApp(),
  ));
}

class ExtractingWidgetApp extends StatefulWidget {
  @override
  _ExtractingWidgetAppState createState() => _ExtractingWidgetAppState();
}

class _ExtractingWidgetAppState extends State<ExtractingWidgetApp> {
  List<Quote> quote = [
    Quote(auth: "1", text: "One"),
    Quote(auth: "2", text: "Two"),
    Quote(auth: "3", text: "Three"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extraction Widget"),
      ),
      body: Column(
        children: quote.map((q) => QuoteCard(
          quote: q,
          delete: (){
            setState(() {
              quote.remove(q);
            });
          },
        )).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(21.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.auth,
            style: TextStyle(
              fontSize: 11.1
            ),
          ),
          SizedBox(
            height: 11.1,
          ),
          Text(
            quote.text,
            style: TextStyle(
                fontSize: 11.1
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          FlatButton.icon(
            onPressed: delete,
            icon: Icon(
              Icons.delete,
              color: Colors.black,
            ),
            label: Text("Delete"),
          )
        ],
      ),
    );
  }
}

