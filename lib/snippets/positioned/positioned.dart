import 'package:flutter/material.dart';

class SnippetPositioned extends StatefulWidget {
  @override
  _SnippetPositionedState createState() => _SnippetPositionedState();
}

class _SnippetPositionedState extends State<SnippetPositioned> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.blue[50],
          height: 300,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                top: 70,
                right: 10,
                bottom: 70,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
