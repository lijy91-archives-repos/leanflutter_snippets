import 'package:flutter/material.dart';

class SnippetText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, Bob! How are you?',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
