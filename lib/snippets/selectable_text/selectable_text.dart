import 'package:flutter/material.dart';

class SnippetSelectableText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      'Hello! How are you?',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
