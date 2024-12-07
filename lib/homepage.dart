import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Selectable Text',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        body: Center(
          child: TextSelectionTheme(
            data: TextSelectionThemeData(selectionColor: Colors.amber),
            child: SelectableText(
              "This is selectable text\nA\nB\nC\nD\nE\nF",
              style: TextStyle(fontSize: 28),
              showCursor: true,
              maxLines: 5,
            ),
          ),
        ),
      ),
    );
  }
}
