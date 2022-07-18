import 'package:flutter/material.dart';
import 'package:quotify/quote_card.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes = [
  //   'Be yourself; everyone else is already taken',
  //   'I have nothing to delcrare except my genius',
  //   'The truth is rarely pure and never simple'
  // ];

  List<Quote> quotes = [
    Quote(
        author: 'Osca Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Shakil Kill',
        text: 'I have nothing to delcrare except my genius'),
    Quote(
        author: 'Sk Subroto',
        text: 'The truth is rarely pure and never simple'),
  ];

  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList()),
    );
  }
}
