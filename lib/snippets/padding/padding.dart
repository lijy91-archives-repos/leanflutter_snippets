import 'package:flutter/material.dart';

class SnippetPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: const Card(child: Text('Hello World!')),
    );
  }
}
