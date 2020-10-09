import 'package:flutter/material.dart';

class SnippetConstrainedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: const Card(child: Text('Hello World!')),
    );
  }
}
