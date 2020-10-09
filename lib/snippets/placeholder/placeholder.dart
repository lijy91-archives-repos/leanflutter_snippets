import 'package:flutter/material.dart';

class SnippetPlaceholder extends StatefulWidget {
  @override
  _SnippetPlaceholderState createState() => _SnippetPlaceholderState();
}

class _SnippetPlaceholderState extends State<SnippetPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.white,
      child: Placeholder(
        color: Colors.blue[50],
      ),
    );
  }
}
