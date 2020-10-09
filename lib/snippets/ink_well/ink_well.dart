import 'package:flutter/material.dart';

class SnippetInkWell extends StatefulWidget {
  @override
  _SnippetInkWellState createState() => _SnippetInkWellState();
}

class _SnippetInkWellState extends State<SnippetInkWell> {
  double sideLength = 50;

  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        height: sideLength,
        width: sideLength,
        duration: Duration(seconds: 2),
        curve: Curves.easeIn,
        child: Material(
          color: Colors.yellow,
          child: InkWell(
            onTap: () {
              setState(() {
                sideLength == 50 ? sideLength = 100 : sideLength = 50;
              });
            },
          ),
        ),
      ),
    );
  }
}
